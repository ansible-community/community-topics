# Ansible Community Topics Workflow

## Overview

**Warning:** Subject to frequent updates. This is a "living document", expect it to change as we progress with the Community Topics workflow over the next few months.

This document describes the Ansible Community Topics workflow (hereinafter `Workflow`) to provide guidance on successful resolving topics in the asynchronous way.

The Workflow is a set of actions that need to be done successively within the corresponding time frames.

After a topic is created, a Steering Committee member (hereinafter `Committee person`) copies the Workflow into the topic and, along the way, marks the checkboxes as complete to track the progress, see and plan the following actions needed to get the topic resolved within acceptable time.

**Note:** If you have any ideas on how the Workflow can be improved, please create an issue in this repository or pull request against this document.

## Workflow

**Note:** This is a rough scenario and it can vary depending on a topic's complexity and other nuances, for example, when there is a mass agreement up-front.

### Preparation stage

- [ ] A Committee person checks the topic's content, asks the author / other persons to provide additional information if needed (adds the `waiting` label in this case).
- [ ] Adds the topic to the [Board](https://github.com/orgs/ansible-community/projects/2/views/1).

### Discussion stage

- [ ] If the topic is ready to be discussed, the Committee person:

  - [ ] Adds the `discussion_topic` label.
  - [ ] Moves the topic to the `In Discussion` column on the [Board](https://github.com/orgs/ansible-community/projects/2/views/5).
  - [ ] Opens the discussion by adding a comment asking the Community and the Committee to take part in it.
- [ ] No sync discussion is needed (there are no blockers, complications, confusion, or impasses).

### Voting stage

- [ ] Depending on the topic's complexity, after 1-2 weeks pass since the discussion was open, the Committee person formulates vote options based on the prior discussion and gives participants reasonable amount of time to propose changes to the options (no longer than a week). The person summarizes the options in a comment and also establishes a date when the vote begins if there are no objections about the options / vote date.
- [ ] In the vote date, the vote starts with the comment of a Committee person which opens the vote and establishes a date when the vote ends ($CURRENT_DATE + no longer than 14 days).
- [ ] The Committee person labels the topic with the `active-vote` label and moves the topic to the `Active Vote` column on the [Board](https://github.com/orgs/ansible-community/projects/2/views/5).
- [ ] The Committee person adds `[Vote ends on $YYYY-MM-DD]` to the beginning of the topic's description.

### Voting result stage

- [ ] The next day after the last day of the vote, the Committee person:

  - [ ] Removes the `active-vote` label.
  - [ ] Add a comment that the vote ended.
  - [ ] Changes the beginning of the topic's description to `[Vote ended]`.
  - [ ] Counts the votes separating ones made by Community and made by Committee and creates a summary comment containing the result.
  - [ ] Asks another Committee person to count the votes and provide the summary.
- [ ] Up to the [next](https://github.com/ansible/community/blob/main/meetings/README.md#wednesdays) Community meeting, at least two Steering Committee members count the votes and summarize the result in comments.
- [ ] The vote's result and the final decision are announced in the Community meeting.

### Implementation stage

- [ ] If the topic implies some actions (if it does not, just mark this as complete), the Committee person:

  - [ ] Assigns the topic to a person responsible for performing the actions.
  - [ ] Add the `being_implemented` label to the topic.
- [ ] After the topic is implemented, the assignee:

  - [ ] Comments on the topic that the work is done.
  - [ ] Removes the `being_implemented` label.
  - [ ] Add the `implemented` label.
- [ ] A Committee person moves the topic to the `Resolved` column on the [Board](https://github.com/orgs/ansible-community/projects/2/views/5) and closes the topic.
