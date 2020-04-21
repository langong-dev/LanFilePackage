#!/bin/sh

echo "
Help for LanFilePackage:

Use: './LanGong <type> <class> <name>'

1. 'install'
Mean: Install some Package.
Use: './LanGong install <class> <name>'
	1. 'github'
	Mean: Install Package from GitHub.
	Use: './LanGong install github <PackageUser>/<PackageName>'

	2. 'git'
	Mean: Install Package from Git in Internet.
	Use: './LanGong install git <PackageName>'(without '.git')

	3. 'langonggit'
	Mean: Install Package from LanGongINC.
	Use: './LanGong install langonggit <PackageName>'

2. 'run'
Mean: Run the Software.
Use: './LanGong run <name>'

3. 'ls'
Mean: Fetch all Package.
Use: './LanGong ls'
"