trigger AccountTrigger1 on Account (before insert) {
    for (Account acc : Trigger.new) {
        if (String.isBlank(acc.Type)) {
            acc.Type = 'Qualified';
        }
    }
}