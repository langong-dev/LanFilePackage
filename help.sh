#!/bin/sh

echo "
Help for LanFilePackage:

Use: 'lfp <type> <class> <name>'

1. 'install'
Mean: Install some Package.
Use: 'lfp install <class> <name>'
	1. 'github'
	Mean: Install Package from GitHub.
	Use: 'lfp install github <PackageUser>/<PackageName>'

	2. 'git'
	Mean: Install Package from Git in Internet.
	Use: 'lfp install git <PackageName>'(without '.git')

	3. 'langong'
	Mean: Install Package from LanGongOnline.
	Use: 'lfp install langong <PackageName>'
	Remarks: You can find ALL LanGong packages on 'https://langong-dev.github.io/Package/' .

2. 'run'
Mean: Run the Software.
Use: 'lfp run <name>'

3. 'ls'
Mean: Fetch all Package.
Use: 'lfp ls'

4. 'update'
Mean: Update LanFilePackage.
Use: 'lfp update'

5. 'uninstall'
Mean: Uninstall a Package.
Use: 'lfp uninstall <PackageName>'
Remarks: You have to use the 'root'.

6. 'search'
Mean: Search LanGong's Package from GitHub.
Use: 'lfp search'

7. 'log'
Mean: Get log
Use: 'lfp log'

Remarks: 'Help' is update at 2020-05-01.
"
