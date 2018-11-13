#!/bin/perl

while(<>){
	chomp;
	if(/^(.*\/(.*).git)\s+(.*)$/) {
		$srcRepo=$1;
		$dir=$2;
		$dstRepo=$3;
		print "$srcRepo -> $dstRepo  dir=$dir\n";
		if(-d $dir) {
			chdir($dir);
			system("git pull -X theirs");
			&sync($dstRepo);
			chdir('..');
		}else{
			$cmd="git clone $srcRepo $dir";
			system($cmd);
			chdir($dir);
			&sync($dstRepo);
			chdir('..');
		}
	}
}

sub sync(){
	$dstRepo = $_[0];
	%localBranches;
	unless ( open BRANCH, "-|" )
    {
        exec "git branch";
        exit;
    }
    
    while(<BRANCH>){
    	if(/\s+(.*)$/) {
    		print "Local branch:$1\n";
    		$localBranches{$1}=1;
    	}
    }
    close BRANCH;

	unless ( open BRANCH, "-|" )
    {
        exec "git branch -r";
        exit;
    }
    
    while(<BRANCH>){
    	if(/(origin\/(.*))\s*$/) {
    		$origBranch = $1;
    		$branch = $2;
    		print "Found branch:$branch\n";
    		if(defined(${localBranches{$branch}})) {
    			system("git checkout $branch && git pull");
    		}else{
    			system("git checkout -b $branch $origBranch");	
    		}
    	}
    }
    close BRANCH;
    system("git push -u $dstRepo --all");
    system("git push -u $dstRepo --tags");
}
