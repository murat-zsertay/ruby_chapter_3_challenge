# Chapter 3 Challenges

Well done for reaching the chapter 3 challenges!

Do the drills first and then move onto the programming challenge. You must complete both before going [back](../06_putting_chapter_3_into_practice.md) to reflect on your progress.

## Initial Setup

### Installing Dependencies

You don't need to install bundler again, but you should consider this set of exercises to be a new project with its own dependencies. Make sure you're in the `challenges` directory of chapter 3 and then do this...

```shell
; bundle install
```

**Reach out to your cohort and then your coach if you have any problems at this point**

You might notice a new dependency called `TimeCop`.  This allows us to do things, in the tests, in what appears to be the future or the past and this can be useful for time-dependent features, such as a greeter which says different things at different times of day.

You won't need to use `TimeCop` yourself though :)

## RSpec

Once again, RSpec will be your guide.

You might see this at some point...

```shell
0 examples, 0 failures
```

It means that RSpec cannot find your tests and, normally, it's the result of running `rspec` in the wrong directory.

## Drills

The process here is the same as it was for the previous chapters, but here's a reminder of how to get started.

### Getting Started

1. Find the first set of drills
    * For chapter 3, that's `./drills/lib/1_arrays_and_hashes.rb`
    * You'll find further instructions there
2. Work on the first challenge
3. Run `rspec` to check your answers
4. Keep going until all the tests for that set of drills are passing
5. Move on to the next set
6. Keep going until all the tests for all the sets are passing
7. [Zip up](../../pills/creating_zipfiles.md) your code so that you're ready to share it later
8. Move on to the programming challenge

## Programming Challenge

In this exercise you'll bring together several different concepts to build Password Manager 2.0. 

> Please do a [screen recording](../../pills/screen_recordings.md) of yourself working on this exercise so that your coach can see how you're getting on. You can upload it, along with your code, using the form at the end of this file.

## Requirements

Here's a reminder of the new requirements.

Password Manager 2.0, will allow users to...

- Delete services (and their passwords)
- Track when a password was added
- Update passwords
- Track when a password was updated
- Ensure all service names are unique
- Ensure all passwords are unique
- Sort the list of services alphabetically and by date of password creation

## Problem Decomposition

You're going to need 6 methods this time
- `add`
    * Takes two strings, the service and its password, as arguments
    * Stores the new service and its password
    * Unless the new password is already in use elsewhere
    * Or the service already has a stored password
- `remove`
    * Takes one string, the name of a service, as an argument
    * Deletes that service and its password
- `services`
    * Takes no arguments
    * Returns a list of all the services for which a password has been stored
    * Does not return all the passwords
- `sort_by`
    * Takes one string, either `"service"` or `"added_on"`, as an argument
    * Returns the list of services sorted by `"service"` or `"added_on"`
- `password_for`
    * Takes one string, the service, as an argument
    * Returns the password for that service
- `update`
    * Takes two strings, a service name and new password, as arguments
    * Updates the password of the service, with the new password
    * Unless the new password is already in use elsewhere

To improve readability, you might choose to break some of these methods down into small pieces by implementing your own, additional, methods.

### Getting Started
1. [Create a class recipe](../../chapter2/challenges/baking_a_class.md)
2. [Start recording](../../pills/screen_recordings.md) 🎥
3. Explain the class interface and examples from your recipe
4. Navigate to the `program` directory on the command line and run `rspec`
5. Work in small steps to build Password Manager 2.0
6. Run `rspec` regularly to check your progress
7. Keep going until all the tests pass



## Submitting Your Work
You will need to push your changes to your repo in order for it to be reviewed.

**You must make a new public repo on GitHub!** 

Call it something like "**ruby_challenge_three**". Make sure the repo is set to 'public'.

Use [this form](https://airtable.com/shr6mk28x0fy3OrxN?prefill_Item=rubyf_ch3_peer_review) to submit your code and screen recording, and GitHub repo.

Then add this destination repo to your remote path using Git:

    
    git remote add review_repo https://github.com/<your profile name>/ruby_challenge_one.git
    

You must make a new branch in order for your Peer to be able to leave comments on. It will look something like this:


    git branch peer_review_branch
    git switch peer_review_branch
    git add .
    git commit -m 'ready to be reviewed'
    git push -u review_repo peer_review_branch

Once you navigate to your GitHub repo, head to Pull Requests. This is where you can make a new Pull Request that compares `peer_review_branch` to `main`.

You must send the link to this new Pull Request.

Your Peer will leave comments on the Pull Request.

### Peer Code Review

Upon submission of the initial programming task in Chapter 3, your technical coach will pair you up with someone who will review your code. Work with this colleague, until you are both happy that the submission is adequate at which point you can merge the branch and close the Pull Request.

You can return [here](https://github.com/makersacademy/ruby_foundations/blob/main/PEER_REVIEW.md) to view the Peer Review Overview.

You can find the Peer Review checklist [here](./program/CHECKLIST.md)

Use [this form](https://airtable.com/shr6mk28x0fy3OrxN?prefill_Item=rubyf_ch3_peer_review) to submit the Pull Request link on the reviewed repo, and a screenshot.

## What Next?

Go back [here](../06_putting_chapter_3_into_practice.md#reflect-and-review) to reflect on your progress before moving on.


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter3%2Fchallenges%2FREADME.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter3%2Fchallenges%2FREADME.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter3%2Fchallenges%2FREADME.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter3%2Fchallenges%2FREADME.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter3%2Fchallenges%2FREADME.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
