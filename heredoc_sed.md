```shell
❯ cat <<EOF | sed 's/^  *#//'                                                                                                                                                  ─╯
pipe heredoc> >....
    #                   external_uri: None
    #                   external_identifier: None
    #                   ds_id: 'DSNAME9999'
    #               label:
    #                 'Something Import':
    #                   wd_qid: 'Q1234'
    #                   label: 'Something Import'
    #                   auth_class_qid: 'Q8'
    #                   external_uri: None
    #                   external_identifier: None
    #                   ds_id: 'DSNAME9999'
    #               // etc. ...
    #
    #       It should be (may be?) sufficient to have the two types of columns:
    #       label, and unique_key, no two items should have duplicate keys
    #
    #       Thus:
    #
    #           cache:
    #             unique_key:
    #               Q12345:
    #                 wd_qid: 'Q12345'
    #                 label: 'Something Import'
    #                 auth_class_qid: 'Q8'
    #                 external_uri: None
    #                 external_identifier: None
    #                 ds_id: 'DSNAME9999'
    #               DSNAME9999:
    #                 wd_qid: 'Q12345'
    #                 label: 'Something Import'
    #                 auth_class_qid: 'Q8'
    #                 external_uri: None
    #                 external_identifier: None
    #                 ds_id: 'DSNAME9999'
    #             label:
    #               'Something Important':
    #                 - wd_qid: 'Q12345'
    #                   label: 'Something Import'
    #                   auth_class_qid: 'Q8'
    #                   external_uri: None
    #                   external_identifier: None
    #                   ds_id: 'DSNAME9999'
    #
    #       The one concerning element with the two-list approach is the label;
    #       I'm not sure we can count on labels being unique.
    #
    #       We could address this problem by having each key point to an array
    #       and asking for a QID as a 'hint' to choose between two dicts.
    #
    #       QUESTION: Can we count on unique labels within an authority class?
pipe heredoc> EOF
 TODO: This cache nesting structure is overcomplicated; simplify it
       The structure is cache[CLASS_QID[KEY_TYPE[UNIQUE_ID[DATA_DICT[KEYS]]]]

       For example:

           cache:
             Q8:
               wd_qid:
                 Q12345:
                   wd_qid: 'Q12345'
                   label: 'Something Import'
                   auth_class_qid: 'Q8'
                   external_uri: None
                   external_identifier: None
                   ds_id: 'DSNAME9999'
               label:
                 'Something Import':
                   wd_qid: 'Q1234'
                   label: 'Something Import'
                   auth_class_qid: 'Q8'
                   external_uri: None
                   external_identifier: None
                   ds_id: 'DSNAME9999'
               // etc. ...

       It should be (may be?) sufficient to have the two types of columns:
       label, and unique_key, no two items should have duplicate keys

       Thus:

           cache:
             unique_key:
               Q12345:
                 wd_qid: 'Q12345'
                 label: 'Something Import'
                 auth_class_qid: 'Q8'
                 external_uri: None
                 external_identifier: None
                 ds_id: 'DSNAME9999'
               DSNAME9999:
                 wd_qid: 'Q12345'
                 label: 'Something Import'
                 auth_class_qid: 'Q8'
                 external_uri: None
                 external_identifier: None
                 ds_id: 'DSNAME9999'
             label:
               'Something Important':
                 - wd_qid: 'Q12345'
                   label: 'Something Import'
                   auth_class_qid: 'Q8'
                   external_uri: None
                   external_identifier: None
                   ds_id: 'DSNAME9999'

       The one concerning element with the two-list approach is the label;
       I'm not sure we can count on labels being unique.

       We could address this problem by having each key point to an array
       and asking for a QID as a 'hint' to choose between two dicts.

       QUESTION: Can we count on unique labels within an authority class?
EOF
```

or

```shell
❯ cat <<EOF | sed 's/^  *#//' | pbcopy                                                                                                                                         ─╯     # TODO: This cache nesting structure is overcomplicated; simplify it
    #       The structure is cache[CLASS_QID[KEY_TYPE[UNIQUE_ID[DATA_DICT[KEYS]]]]
    #
    #       For example:
    #
    #           cache:
    #             Q8:
    #               wd_qid:
    #                 Q12345:
    #                   wd_qid: 'Q12345'
    #                   label: 'Something Import'
    #                   auth_class_qid: 'Q8'
    #                   external_uri: None
    #                   external_identifier: None
    #                   ds_id: 'DSNAME9999'
    #               label:
    #                 'Something Import':
    #                   wd_qid: 'Q1234'
    #                   label: 'Something Import'
    #                   auth_class_qid: 'Q8'
    #                   external_uri: None
    #                   external_identifier: None
    #                   ds_id: 'DSNAME9999'
    #               // etc. ...
    #
    #       It should be (may be?) sufficient to have the two types of columns:
    #       label, and unique_key, no two items should have duplicate keys
    #
    #       Thus:
    #
    #           cache:
    #             unique_key:
    #               Q12345:
    #                 wd_qid: 'Q12345'
    #                 label: 'Something Import'
    #                 auth_class_qid: 'Q8'
    #                 external_uri: None
    #                 external_identifier: None
    #                 ds_id: 'DSNAME9999'
    #               DSNAME9999:
    #                 wd_qid: 'Q12345'
    #                 label: 'Something Import'
    #                 auth_class_qid: 'Q8'
    #                 external_uri: None
    #                 external_identifier: None
    #                 ds_id: 'DSNAME9999'
    #             label:
    #               'Something Important':
    #                 - wd_qid: 'Q12345'
    #                   label: 'Something Import'
EOF
```