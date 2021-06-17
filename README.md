# README

This repo has no native front-end, and is indended to be used with: 
https://github.com/dirklo/hang-pan-frontend

## Built with Ruby 2.7.2 and Rails 6.1.3 

## Installation Instructions:

Fork and download this repo, and run the following commands to seed the database:
```
>rake db:migrate
```
```
>rake db:seed
```

View the saved notes and scales in the rails console using:
```
>rails c
```
```
>Note.all
```
```
>Scale.all
```
