.class Lcom/onesignal/OSInAppMessageController;
.super Ljava/lang/Object;
.source "OSInAppMessageController.java"

# interfaces
.implements Lcom/onesignal/OSDynamicTriggerController$OSDynamicTriggerControllerObserver;
.implements Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;


# static fields
.field private static PREFERRED_VARIANT_ORDER:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sharedInstance:Lcom/onesignal/OSInAppMessageController;


# instance fields
.field private final clickedClickIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentPrompt:Lcom/onesignal/OSInAppMessagePrompt;

.field private final dismissedMessages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private htmlNetworkRequestAttemptCount:I

.field private final impressionedMessages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inAppMessageRepository:Lcom/onesignal/OSInAppMessageRepository;

.field private inAppMessageShowing:Z

.field private inAppMessagingEnabled:Z

.field lastTimeInAppDismissed:Ljava/util/Date;

.field private final messageDisplayQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onesignal/OSInAppMessage;",
            ">;"
        }
    .end annotation
.end field

.field private messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onesignal/OSInAppMessage;",
            ">;"
        }
    .end annotation
.end field

.field private redisplayedInAppMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessage;",
            ">;"
        }
    .end annotation
.end field

.field private systemConditionController:Lcom/onesignal/OSSystemConditionController;

.field triggerController:Lcom/onesignal/OSTriggerController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Lcom/onesignal/OSInAppMessageController$1;

    invoke-direct {v0}, Lcom/onesignal/OSInAppMessageController$1;-><init>()V

    sput-object v0, Lcom/onesignal/OSInAppMessageController;->PREFERRED_VARIANT_ORDER:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>(Lcom/onesignal/OneSignalDbHelper;)V
    .registers 5

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/onesignal/OSInAppMessageController;->currentPrompt:Lcom/onesignal/OSInAppMessagePrompt;

    const/4 v1, 0x1

    .line 64
    iput-boolean v1, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessagingEnabled:Z

    const/4 v1, 0x0

    .line 65
    iput-boolean v1, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageShowing:Z

    .line 69
    iput v1, p0, Lcom/onesignal/OSInAppMessageController;->htmlNetworkRequestAttemptCount:I

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/onesignal/OSInAppMessageController;->messages:Ljava/util/ArrayList;

    .line 90
    invoke-static {}, Lcom/onesignal/OSUtils;->newConcurrentSet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/OSInAppMessageController;->dismissedMessages:Ljava/util/Set;

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    .line 92
    invoke-static {}, Lcom/onesignal/OSUtils;->newConcurrentSet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/OSInAppMessageController;->impressionedMessages:Ljava/util/Set;

    .line 93
    invoke-static {}, Lcom/onesignal/OSUtils;->newConcurrentSet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/OSInAppMessageController;->clickedClickIds:Ljava/util/Set;

    .line 94
    new-instance v1, Lcom/onesignal/OSTriggerController;

    invoke-direct {v1, p0}, Lcom/onesignal/OSTriggerController;-><init>(Lcom/onesignal/OSDynamicTriggerController$OSDynamicTriggerControllerObserver;)V

    iput-object v1, p0, Lcom/onesignal/OSInAppMessageController;->triggerController:Lcom/onesignal/OSTriggerController;

    .line 95
    new-instance v1, Lcom/onesignal/OSSystemConditionController;

    invoke-direct {v1, p0}, Lcom/onesignal/OSSystemConditionController;-><init>(Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;)V

    iput-object v1, p0, Lcom/onesignal/OSInAppMessageController;->systemConditionController:Lcom/onesignal/OSSystemConditionController;

    .line 97
    sget-object v1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v2, "PREFS_OS_DISPLAYED_IAMS"

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignalPrefs;->getStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 103
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->dismissedMessages:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 105
    :cond_4b
    sget-object v1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v2, "PREFS_OS_IMPRESSIONED_IAMS"

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignalPrefs;->getStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_5a

    .line 111
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->impressionedMessages:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 113
    :cond_5a
    sget-object v1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v2, "PREFS_OS_CLICKED_CLICK_IDS_IAMS"

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignalPrefs;->getStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 119
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->clickedClickIds:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 121
    :cond_69
    invoke-virtual {p0, p1}, Lcom/onesignal/OSInAppMessageController;->initRedisplayData(Lcom/onesignal/OneSignalDbHelper;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 25
    invoke-static {p0, p1}, Lcom/onesignal/OSInAppMessageController;->printHttpSuccessForInAppMessageRequest(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/onesignal/OSInAppMessageController;)Ljava/util/Set;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/onesignal/OSInAppMessageController;->impressionedMessages:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageController;->queueMessageForDisplay(Lcom/onesignal/OSInAppMessage;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageController;->dismissCurrentMessage(Lcom/onesignal/OSInAppMessage;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;ILjava/lang/String;)V
    .registers 3

    .line 25
    invoke-static {p0, p1, p2}, Lcom/onesignal/OSInAppMessageController;->printHttpErrorForInAppMessageRequest(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessagePrompt;)Lcom/onesignal/OSInAppMessagePrompt;
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/onesignal/OSInAppMessageController;->currentPrompt:Lcom/onesignal/OSInAppMessagePrompt;

    return-object p1
.end method

.method static synthetic access$400(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V
    .registers 3

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/onesignal/OSInAppMessageController;->showAlertDialogMessage(Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V
    .registers 3

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/onesignal/OSInAppMessageController;->showMultiplePrompts(Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/onesignal/OSInAppMessageController;)Ljava/util/Set;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/onesignal/OSInAppMessageController;->clickedClickIds:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$700(Lcom/onesignal/OSInAppMessageController;)Lcom/onesignal/OSInAppMessageRepository;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageRepository:Lcom/onesignal/OSInAppMessageRepository;

    return-object p0
.end method

.method static synthetic access$802(Lcom/onesignal/OSInAppMessageController;Z)Z
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageShowing:Z

    return p1
.end method

.method static synthetic access$900(Lcom/onesignal/OSInAppMessageController;)I
    .registers 1

    .line 25
    iget p0, p0, Lcom/onesignal/OSInAppMessageController;->htmlNetworkRequestAttemptCount:I

    return p0
.end method

.method static synthetic access$902(Lcom/onesignal/OSInAppMessageController;I)I
    .registers 2

    .line 25
    iput p1, p0, Lcom/onesignal/OSInAppMessageController;->htmlNetworkRequestAttemptCount:I

    return p1
.end method

.method static synthetic access$908(Lcom/onesignal/OSInAppMessageController;)I
    .registers 3

    .line 25
    iget v0, p0, Lcom/onesignal/OSInAppMessageController;->htmlNetworkRequestAttemptCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/onesignal/OSInAppMessageController;->htmlNetworkRequestAttemptCount:I

    return v0
.end method

.method private attemptToShowInAppMessage()V
    .registers 5

    .line 508
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 510
    :try_start_3
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->systemConditionController:Lcom/onesignal/OSSystemConditionController;

    invoke-virtual {v1}, Lcom/onesignal/OSSystemConditionController;->systemConditionsAvailable()Z

    move-result v1

    if-nez v1, :cond_14

    .line 511
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "In app message not showing due to system condition not correct"

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 512
    monitor-exit v0

    return-void

    .line 515
    :cond_14
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayFirstIAMOnQueue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 517
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4f

    invoke-virtual {p0}, Lcom/onesignal/OSInAppMessageController;->isInAppMessageShowing()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 518
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "No IAM showing currently, showing first item in the queue!"

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 519
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/OSInAppMessage;

    invoke-direct {p0, v1}, Lcom/onesignal/OSInAppMessageController;->displayMessage(Lcom/onesignal/OSInAppMessage;)V

    .line 520
    monitor-exit v0

    return-void

    .line 523
    :cond_4f
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "In app message is currently showing or there are no IAMs left in the queue!"

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 524
    monitor-exit v0

    return-void

    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method private beginProcessingPrompts(Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/OSInAppMessage;",
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessagePrompt;",
            ">;)V"
        }
    .end annotation

    .line 309
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_26

    .line 310
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAM showing prompts from IAM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/onesignal/WebViewManager;->dismissCurrentInAppMessage()V

    .line 313
    invoke-direct {p0, p1, p2}, Lcom/onesignal/OSInAppMessageController;->showMultiplePrompts(Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V

    :cond_26
    return-void
.end method

.method private dismissCurrentMessage(Lcom/onesignal/OSInAppMessage;)V
    .registers 7

    .line 574
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->currentPrompt:Lcom/onesignal/OSInAppMessagePrompt;

    if-eqz v0, :cond_c

    .line 575
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Stop evaluateMessageDisplayQueue because prompt is currently displayed"

    invoke-static {p1, v0}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v0, 0x0

    .line 579
    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageShowing:Z

    .line 580
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 581
    :try_start_12
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_52

    if-eqz p1, :cond_2d

    .line 582
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    .line 583
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Message already removed from the queue!"

    invoke-static {p1, v0}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 584
    monitor-exit v1

    return-void

    .line 586
    :cond_2d
    iget-object p1, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onesignal/OSInAppMessage;

    iget-object p1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    .line 587
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In app message with id, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", dismissed (removed) from the queue!"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 592
    :cond_52
    iget-object p1, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_86

    .line 593
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In app message on queue available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onesignal/OSInAppMessage;

    iget-object v3, v3, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 594
    iget-object p1, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onesignal/OSInAppMessage;

    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageController;->displayMessage(Lcom/onesignal/OSInAppMessage;)V

    goto :goto_90

    .line 596
    :cond_86
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "In app message dismissed evaluating messages"

    invoke-static {p1, v0}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 597
    invoke-direct {p0}, Lcom/onesignal/OSInAppMessageController;->evaluateInAppMessages()V

    .line 599
    :goto_90
    monitor-exit v1

    return-void

    :catchall_92
    move-exception p1

    monitor-exit v1
    :try_end_94
    .catchall {:try_start_12 .. :try_end_94} :catchall_92

    throw p1
.end method

.method private displayMessage(Lcom/onesignal/OSInAppMessage;)V
    .registers 4

    .line 642
    iget-boolean v0, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessagingEnabled:Z

    if-nez v0, :cond_c

    .line 643
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "In app messaging is currently paused, iam will not be shown!"

    invoke-static {p1, v0}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v0, 0x1

    .line 647
    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageShowing:Z

    .line 649
    invoke-static {p1}, Lcom/onesignal/OSInAppMessageController;->htmlPathForMessage(Lcom/onesignal/OSInAppMessage;)Ljava/lang/String;

    move-result-object v0

    .line 650
    new-instance v1, Lcom/onesignal/OSInAppMessageController$10;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/OSInAppMessageController$10;-><init>(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;)V

    const/4 p1, 0x0

    invoke-static {v0, v1, p1}, Lcom/onesignal/OneSignalRestClient;->get(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)V

    return-void
.end method

.method private evaluateInAppMessages()V
    .registers 5

    .line 196
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/OSInAppMessage;

    .line 197
    invoke-direct {p0, v1}, Lcom/onesignal/OSInAppMessageController;->setDataForRedisplay(Lcom/onesignal/OSInAppMessage;)V

    .line 198
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->dismissedMessages:Ljava/util/Set;

    iget-object v3, v1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->triggerController:Lcom/onesignal/OSTriggerController;

    invoke-virtual {v2, v1}, Lcom/onesignal/OSTriggerController;->evaluateMessageTriggers(Lcom/onesignal/OSInAppMessage;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 199
    invoke-direct {p0, v1}, Lcom/onesignal/OSInAppMessageController;->queueMessageForDisplay(Lcom/onesignal/OSInAppMessage;)V

    goto :goto_6

    :cond_2b
    return-void
.end method

.method private fireClickAction(Lcom/onesignal/OSInAppMessageAction;)V
    .registers 4

    .line 396
    iget-object v0, p1, Lcom/onesignal/OSInAppMessageAction;->clickUrl:Ljava/lang/String;

    if-eqz v0, :cond_24

    iget-object v0, p1, Lcom/onesignal/OSInAppMessageAction;->clickUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    .line 397
    iget-object v0, p1, Lcom/onesignal/OSInAppMessageAction;->urlTarget:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    sget-object v1, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->BROWSER:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    if-ne v0, v1, :cond_18

    .line 398
    iget-object p1, p1, Lcom/onesignal/OSInAppMessageAction;->clickUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/onesignal/OSUtils;->openURLInBrowser(Ljava/lang/String;)V

    goto :goto_24

    .line 399
    :cond_18
    iget-object v0, p1, Lcom/onesignal/OSInAppMessageAction;->urlTarget:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    sget-object v1, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->IN_APP_WEBVIEW:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    if-ne v0, v1, :cond_24

    .line 400
    iget-object p1, p1, Lcom/onesignal/OSInAppMessageAction;->clickUrl:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/onesignal/OneSignalChromeTab;->open(Ljava/lang/String;Z)Z

    :cond_24
    :goto_24
    return-void
.end method

.method private fireOutcomesForClick(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessageOutcome;",
            ">;)V"
        }
    .end annotation

    .line 363
    invoke-static {}, Lcom/onesignal/OneSignal;->getSessionManager()Lcom/onesignal/OSSessionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onesignal/OSSessionManager;->onDirectInfluenceFromIAMClick(Ljava/lang/String;)V

    .line 364
    invoke-static {p2}, Lcom/onesignal/OneSignal;->sendClickActionOutcomes(Ljava/util/List;)V

    return-void
.end method

.method private firePublicClickHandler(Ljava/lang/String;Lcom/onesignal/OSInAppMessageAction;)V
    .registers 4

    .line 379
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v0, v0, Lcom/onesignal/OneSignal$Builder;->mInAppMessageClickHandler:Lcom/onesignal/OneSignal$InAppMessageClickHandler;

    if-nez v0, :cond_7

    return-void

    .line 382
    :cond_7
    new-instance v0, Lcom/onesignal/OSInAppMessageController$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/onesignal/OSInAppMessageController$6;-><init>(Lcom/onesignal/OSInAppMessageController;Ljava/lang/String;Lcom/onesignal/OSInAppMessageAction;)V

    invoke-static {v0}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private fireRESTCallForClick(Lcom/onesignal/OSInAppMessage;Lcom/onesignal/OSInAppMessageAction;)V
    .registers 6

    .line 405
    invoke-static {p1}, Lcom/onesignal/OSInAppMessageController;->variantIdForMessage(Lcom/onesignal/OSInAppMessage;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 409
    :cond_7
    iget-object v1, p2, Lcom/onesignal/OSInAppMessageAction;->clickId:Ljava/lang/String;

    .line 411
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->getRedisplayStats()Lcom/onesignal/OSInAppMessageRedisplayStats;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/OSInAppMessageRedisplayStats;->isRedisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p1, v1}, Lcom/onesignal/OSInAppMessage;->isClickAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    if-nez v2, :cond_27

    .line 414
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->clickedClickIds:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    return-void

    .line 417
    :cond_27
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->clickedClickIds:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 419
    invoke-virtual {p1, v1}, Lcom/onesignal/OSInAppMessage;->addClickId(Ljava/lang/String;)V

    .line 422
    :try_start_2f
    new-instance v2, Lcom/onesignal/OSInAppMessageController$7;

    invoke-direct {v2, p0, v1, v0, p2}, Lcom/onesignal/OSInAppMessageController$7;-><init>(Lcom/onesignal/OSInAppMessageController;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OSInAppMessageAction;)V

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in_app_messages/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/click"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/onesignal/OSInAppMessageController$8;

    invoke-direct {v0, p0, p2}, Lcom/onesignal/OSInAppMessageController$8;-><init>(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessageAction;)V

    invoke-static {p1, v2, v0}, Lcom/onesignal/OneSignalRestClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_54} :catch_55

    goto :goto_60

    :catch_55
    move-exception p1

    .line 451
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 452
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p2, "Unable to execute in-app message action HTTP request due to invalid JSON"

    invoke-static {p1, p2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    :goto_60
    return-void
.end method

.method private fireTagCallForClick(Lcom/onesignal/OSInAppMessageAction;)V
    .registers 3

    .line 368
    iget-object v0, p1, Lcom/onesignal/OSInAppMessageAction;->tags:Lcom/onesignal/OSInAppMessageTag;

    if-eqz v0, :cond_21

    .line 369
    iget-object p1, p1, Lcom/onesignal/OSInAppMessageAction;->tags:Lcom/onesignal/OSInAppMessageTag;

    .line 371
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessageTag;->getTagsToAdd()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 372
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessageTag;->getTagsToAdd()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;)V

    .line 373
    :cond_13
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessageTag;->getTagsToRemove()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 374
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessageTag;->getTagsToRemove()Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/onesignal/OneSignal;->deleteTags(Lorg/json/JSONArray;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V

    :cond_21
    return-void
.end method

.method public static declared-synchronized getController()Lcom/onesignal/OSInAppMessageController;
    .registers 4

    const-class v0, Lcom/onesignal/OSInAppMessageController;

    monitor-enter v0

    .line 75
    :try_start_3
    invoke-static {}, Lcom/onesignal/OneSignal;->getDBHelperInstance()Lcom/onesignal/OneSignalDbHelper;

    move-result-object v1

    .line 78
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-gt v2, v3, :cond_15

    .line 79
    new-instance v2, Lcom/onesignal/OSInAppMessageDummyController;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/onesignal/OSInAppMessageDummyController;-><init>(Lcom/onesignal/OneSignalDbHelper;)V

    sput-object v2, Lcom/onesignal/OSInAppMessageController;->sharedInstance:Lcom/onesignal/OSInAppMessageController;

    .line 82
    :cond_15
    sget-object v2, Lcom/onesignal/OSInAppMessageController;->sharedInstance:Lcom/onesignal/OSInAppMessageController;

    if-nez v2, :cond_20

    .line 83
    new-instance v2, Lcom/onesignal/OSInAppMessageController;

    invoke-direct {v2, v1}, Lcom/onesignal/OSInAppMessageController;-><init>(Lcom/onesignal/OneSignalDbHelper;)V

    sput-object v2, Lcom/onesignal/OSInAppMessageController;->sharedInstance:Lcom/onesignal/OSInAppMessageController;

    .line 85
    :cond_20
    sget-object v1, Lcom/onesignal/OSInAppMessageController;->sharedInstance:Lcom/onesignal/OSInAppMessageController;
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_24

    monitor-exit v0

    return-object v1

    :catchall_24
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static htmlPathForMessage(Lcom/onesignal/OSInAppMessage;)Ljava/lang/String;
    .registers 4

    .line 631
    invoke-static {p0}, Lcom/onesignal/OSInAppMessageController;->variantIdForMessage(Lcom/onesignal/OSInAppMessage;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    .line 634
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find a variant for in-app message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 638
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in_app_messages/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/variants/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/html?app_id="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private logInAppMessagePreviewActions(Lcom/onesignal/OSInAppMessageAction;)V
    .registers 5

    .line 299
    iget-object v0, p1, Lcom/onesignal/OSInAppMessageAction;->tags:Lcom/onesignal/OSInAppMessageTag;

    if-eqz v0, :cond_20

    .line 300
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tags detected inside of the action click payload, ignoring because action came from IAM preview:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/onesignal/OSInAppMessageAction;->tags:Lcom/onesignal/OSInAppMessageTag;

    invoke-virtual {v2}, Lcom/onesignal/OSInAppMessageTag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 302
    :cond_20
    iget-object v0, p1, Lcom/onesignal/OSInAppMessageAction;->outcomes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_44

    .line 303
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outcomes detected inside of the action click payload, ignoring because action came from IAM preview: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/onesignal/OSInAppMessageAction;->outcomes:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    :cond_44
    return-void
.end method

.method private persistInAppMessage(Lcom/onesignal/OSInAppMessage;)V
    .registers 6

    .line 603
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 604
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->getRedisplayStats()Lcom/onesignal/OSInAppMessageRedisplayStats;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/onesignal/OSInAppMessageRedisplayStats;->setLastDisplayTime(J)V

    .line 605
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->getRedisplayStats()Lcom/onesignal/OSInAppMessageRedisplayStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessageRedisplayStats;->incrementDisplayQuantity()V

    const/4 v0, 0x0

    .line 606
    invoke-virtual {p1, v0}, Lcom/onesignal/OSInAppMessage;->setTriggerChanged(Z)V

    const/4 v0, 0x1

    .line 607
    invoke-virtual {p1, v0}, Lcom/onesignal/OSInAppMessage;->setDisplayedInSession(Z)V

    .line 609
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OSInAppMessageController$9;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/OSInAppMessageController$9;-><init>(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;)V

    const-string v2, "OS_SAVE_IN_APP_MESSAGE"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 615
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 619
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3b

    .line 621
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    .line 623
    :cond_3b
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    :goto_40
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persistInAppMessageForRedisplay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with msg array data: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void
.end method

.method private static printHttpErrorForInAppMessageRequest(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 225
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " error while attempting in-app message "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " request: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void
.end method

.method private static printHttpSuccessForInAppMessageRequest(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 221
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successful post for in-app message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " request: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void
.end method

.method private processInAppMessageJson(Lorg/json/JSONArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 185
    :goto_6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 186
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 187
    new-instance v3, Lcom/onesignal/OSInAppMessage;

    invoke-direct {v3, v2}, Lcom/onesignal/OSInAppMessage;-><init>(Lorg/json/JSONObject;)V

    .line 188
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 190
    :cond_1b
    iput-object v0, p0, Lcom/onesignal/OSInAppMessageController;->messages:Ljava/util/ArrayList;

    .line 192
    invoke-direct {p0}, Lcom/onesignal/OSInAppMessageController;->evaluateInAppMessages()V

    return-void
.end method

.method private queueMessageForDisplay(Lcom/onesignal/OSInAppMessage;)V
    .registers 6

    .line 496
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 498
    :try_start_3
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 499
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In app message with id, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", added to the queue"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 503
    :cond_2d
    invoke-direct {p0}, Lcom/onesignal/OSInAppMessageController;->attemptToShowInAppMessage()V

    .line 504
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw p1
.end method

.method private resetRedisplayMessagesBySession()V
    .registers 4

    .line 178
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/OSInAppMessage;

    const/4 v2, 0x0

    .line 179
    invoke-virtual {v1, v2}, Lcom/onesignal/OSInAppMessage;->setDisplayedInSession(Z)V

    goto :goto_6

    :cond_17
    return-void
.end method

.method private setDataForRedisplay(Lcom/onesignal/OSInAppMessage;)V
    .registers 6

    .line 469
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->dismissedMessages:Ljava/util/Set;

    iget-object v1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 470
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eqz v0, :cond_7d

    const/4 v0, -0x1

    if-eq v1, v0, :cond_7d

    .line 473
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataForRedisplay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/OSInAppMessage;

    .line 476
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->getRedisplayStats()Lcom/onesignal/OSInAppMessageRedisplayStats;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessage;->getRedisplayStats()Lcom/onesignal/OSInAppMessageRedisplayStats;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onesignal/OSInAppMessageRedisplayStats;->setDisplayStats(Lcom/onesignal/OSInAppMessageRedisplayStats;)V

    .line 479
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->isTriggerChanged()Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessage;->isDisplayedInSession()Z

    move-result v0

    if-nez v0, :cond_53

    iget-object v0, p1, Lcom/onesignal/OSInAppMessage;->triggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_53

    goto :goto_55

    :cond_53
    const/4 v0, 0x0

    goto :goto_56

    :cond_55
    :goto_55
    const/4 v0, 0x1

    :goto_56
    if-eqz v0, :cond_7d

    .line 482
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->getRedisplayStats()Lcom/onesignal/OSInAppMessageRedisplayStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessageRedisplayStats;->isDelayTimeSatisfied()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 483
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->getRedisplayStats()Lcom/onesignal/OSInAppMessageRedisplayStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessageRedisplayStats;->shouldDisplayAgain()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 484
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->dismissedMessages:Ljava/util/Set;

    iget-object v1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 485
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->impressionedMessages:Ljava/util/Set;

    iget-object v1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 486
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->clearClickIds()V

    :cond_7d
    return-void
.end method

.method private showAlertDialogMessage(Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/OSInAppMessage;",
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessagePrompt;",
            ">;)V"
        }
    .end annotation

    .line 349
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    sget v1, Lcom/onesignal/R$string;->location_not_available_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 350
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    sget v2, Lcom/onesignal/R$string;->location_not_available_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 351
    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 352
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 353
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/onesignal/OSInAppMessageController$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/onesignal/OSInAppMessageController$5;-><init>(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V

    const p1, 0x104000a

    .line 354
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 359
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showMultiplePrompts(Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/OSInAppMessage;",
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessagePrompt;",
            ">;)V"
        }
    .end annotation

    .line 318
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/OSInAppMessagePrompt;

    .line 320
    invoke-virtual {v1}, Lcom/onesignal/OSInAppMessagePrompt;->hasPrompted()Z

    move-result v2

    if-nez v2, :cond_4

    .line 321
    iput-object v1, p0, Lcom/onesignal/OSInAppMessageController;->currentPrompt:Lcom/onesignal/OSInAppMessagePrompt;

    .line 326
    :cond_18
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->currentPrompt:Lcom/onesignal/OSInAppMessagePrompt;

    if-eqz v0, :cond_49

    .line 327
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAM prompt to handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->currentPrompt:Lcom/onesignal/OSInAppMessagePrompt;

    invoke-virtual {v2}, Lcom/onesignal/OSInAppMessagePrompt;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->currentPrompt:Lcom/onesignal/OSInAppMessagePrompt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onesignal/OSInAppMessagePrompt;->setPrompted(Z)V

    .line 329
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->currentPrompt:Lcom/onesignal/OSInAppMessagePrompt;

    new-instance v1, Lcom/onesignal/OSInAppMessageController$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/onesignal/OSInAppMessageController$4;-><init>(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSInAppMessagePrompt;->handlePrompt(Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;)V

    goto :goto_64

    .line 343
    :cond_49
    sget-object p2, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No IAM prompt to handle, dismiss message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0, p1}, Lcom/onesignal/OSInAppMessageController;->messageWasDismissed(Lcom/onesignal/OSInAppMessage;)V

    :goto_64
    return-void
.end method

.method private static variantIdForMessage(Lcom/onesignal/OSInAppMessage;)Ljava/lang/String;
    .registers 5

    .line 205
    invoke-static {}, Lcom/onesignal/OSUtils;->getCorrectedLanguage()Ljava/lang/String;

    move-result-object v0

    .line 207
    sget-object v1, Lcom/onesignal/OSInAppMessageController;->PREFERRED_VARIANT_ORDER:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 208
    iget-object v3, p0, Lcom/onesignal/OSInAppMessage;->variants:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_a

    .line 211
    :cond_1f
    iget-object p0, p0, Lcom/onesignal/OSInAppMessage;->variants:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    .line 212
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 213
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_34
    const-string v0, "default"

    .line 214
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_3d
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method displayPreviewMessage(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    .line 694
    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageShowing:Z

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in_app_messages/device_preview?preview_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&app_id="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 697
    new-instance v0, Lcom/onesignal/OSInAppMessageController$11;

    invoke-direct {v0, p0}, Lcom/onesignal/OSInAppMessageController$11;-><init>(Lcom/onesignal/OSInAppMessageController;)V

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/onesignal/OneSignalRestClient;->get(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)V

    return-void
.end method

.method getInAppMessageRepository(Lcom/onesignal/OneSignalDbHelper;)Lcom/onesignal/OSInAppMessageRepository;
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageRepository:Lcom/onesignal/OSInAppMessageRepository;

    if-nez v0, :cond_b

    .line 126
    new-instance v0, Lcom/onesignal/OSInAppMessageRepository;

    invoke-direct {v0, p1}, Lcom/onesignal/OSInAppMessageRepository;-><init>(Lcom/onesignal/OneSignalDbHelper;)V

    iput-object v0, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageRepository:Lcom/onesignal/OSInAppMessageRepository;

    .line 128
    :cond_b
    iget-object p1, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageRepository:Lcom/onesignal/OSInAppMessageRepository;

    return-object p1
.end method

.method protected initRedisplayData(Lcom/onesignal/OneSignalDbHelper;)V
    .registers 4

    .line 132
    invoke-virtual {p0, p1}, Lcom/onesignal/OSInAppMessageController;->getInAppMessageRepository(Lcom/onesignal/OneSignalDbHelper;)Lcom/onesignal/OSInAppMessageRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageRepository:Lcom/onesignal/OSInAppMessageRepository;

    .line 133
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessageRepository;->getCachedInAppMessages()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    .line 135
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "redisplayedInAppMessages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void
.end method

.method initWithCachedInAppMessages()V
    .registers 5

    .line 142
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 145
    :cond_9
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PREFS_OS_CACHED_IAMS"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initWithCachedInAppMessages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    if-nez v0, :cond_2b

    return-void

    .line 156
    :cond_2b
    :try_start_2b
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/onesignal/OSInAppMessageController;->processInAppMessageJson(Lorg/json/JSONArray;)V
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception v0

    .line 158
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_38
    return-void
.end method

.method isInAppMessageShowing()Z
    .registers 2

    .line 528
    iget-boolean v0, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageShowing:Z

    return v0
.end method

.method public messageTriggerConditionChanged()V
    .registers 1

    .line 728
    invoke-direct {p0}, Lcom/onesignal/OSInAppMessageController;->evaluateInAppMessages()V

    return-void
.end method

.method messageWasDismissed(Lcom/onesignal/OSInAppMessage;)V
    .registers 3

    const/4 v0, 0x0

    .line 541
    invoke-virtual {p0, p1, v0}, Lcom/onesignal/OSInAppMessageController;->messageWasDismissed(Lcom/onesignal/OSInAppMessage;Z)V

    return-void
.end method

.method messageWasDismissed(Lcom/onesignal/OSInAppMessage;Z)V
    .registers 5

    .line 546
    invoke-static {}, Lcom/onesignal/OneSignal;->getSessionManager()Lcom/onesignal/OSSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSSessionManager;->onDirectInfluenceFromIAMClickFinished()V

    .line 548
    iget-boolean v0, p1, Lcom/onesignal/OSInAppMessage;->isPreview:Z

    if-nez v0, :cond_43

    .line 549
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->dismissedMessages:Ljava/util/Set;

    iget-object v1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_27

    .line 552
    sget-object p2, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->dismissedMessages:Ljava/util/Set;

    const-string v1, "PREFS_OS_DISPLAYED_IAMS"

    invoke-static {p2, v1, v0}, Lcom/onesignal/OneSignalPrefs;->saveStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 558
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    iput-object p2, p0, Lcom/onesignal/OSInAppMessageController;->lastTimeInAppDismissed:Ljava/util/Date;

    .line 560
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageController;->persistInAppMessage(Lcom/onesignal/OSInAppMessage;)V

    .line 562
    :cond_27
    sget-object p2, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSInAppMessageController messageWasDismissed dismissedMessages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->dismissedMessages:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 565
    :cond_43
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageController;->dismissCurrentMessage(Lcom/onesignal/OSInAppMessage;)V

    return-void
.end method

.method onMessageActionOccurredOnMessage(Lcom/onesignal/OSInAppMessage;Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 277
    new-instance v0, Lcom/onesignal/OSInAppMessageAction;

    invoke-direct {v0, p2}, Lcom/onesignal/OSInAppMessageAction;-><init>(Lorg/json/JSONObject;)V

    .line 278
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->takeActionAsUnique()Z

    move-result p2

    iput-boolean p2, v0, Lcom/onesignal/OSInAppMessageAction;->firstClick:Z

    .line 280
    iget-object p2, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/onesignal/OSInAppMessageController;->firePublicClickHandler(Ljava/lang/String;Lcom/onesignal/OSInAppMessageAction;)V

    .line 281
    iget-object p2, v0, Lcom/onesignal/OSInAppMessageAction;->prompts:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/onesignal/OSInAppMessageController;->beginProcessingPrompts(Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V

    .line 282
    invoke-direct {p0, v0}, Lcom/onesignal/OSInAppMessageController;->fireClickAction(Lcom/onesignal/OSInAppMessageAction;)V

    .line 283
    invoke-direct {p0, p1, v0}, Lcom/onesignal/OSInAppMessageController;->fireRESTCallForClick(Lcom/onesignal/OSInAppMessage;Lcom/onesignal/OSInAppMessageAction;)V

    .line 284
    invoke-direct {p0, v0}, Lcom/onesignal/OSInAppMessageController;->fireTagCallForClick(Lcom/onesignal/OSInAppMessageAction;)V

    .line 285
    iget-object p1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    iget-object p2, v0, Lcom/onesignal/OSInAppMessageAction;->outcomes:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/onesignal/OSInAppMessageController;->fireOutcomesForClick(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method onMessageActionOccurredOnPreview(Lcom/onesignal/OSInAppMessage;Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 289
    new-instance v0, Lcom/onesignal/OSInAppMessageAction;

    invoke-direct {v0, p2}, Lcom/onesignal/OSInAppMessageAction;-><init>(Lorg/json/JSONObject;)V

    .line 290
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->takeActionAsUnique()Z

    move-result p2

    iput-boolean p2, v0, Lcom/onesignal/OSInAppMessageAction;->firstClick:Z

    .line 292
    iget-object p2, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/onesignal/OSInAppMessageController;->firePublicClickHandler(Ljava/lang/String;Lcom/onesignal/OSInAppMessageAction;)V

    .line 293
    iget-object p2, v0, Lcom/onesignal/OSInAppMessageAction;->prompts:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/onesignal/OSInAppMessageController;->beginProcessingPrompts(Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V

    .line 294
    invoke-direct {p0, v0}, Lcom/onesignal/OSInAppMessageController;->fireClickAction(Lcom/onesignal/OSInAppMessageAction;)V

    .line 295
    invoke-direct {p0, v0}, Lcom/onesignal/OSInAppMessageController;->logInAppMessagePreviewActions(Lcom/onesignal/OSInAppMessageAction;)V

    return-void
.end method

.method onMessageWasShown(Lcom/onesignal/OSInAppMessage;)V
    .registers 5

    .line 229
    iget-boolean v0, p1, Lcom/onesignal/OSInAppMessage;->isPreview:Z

    if-eqz v0, :cond_5

    return-void

    .line 233
    :cond_5
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->impressionedMessages:Ljava/util/Set;

    iget-object v1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 237
    :cond_10
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->impressionedMessages:Ljava/util/Set;

    iget-object v1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-static {p1}, Lcom/onesignal/OSInAppMessageController;->variantIdForMessage(Lcom/onesignal/OSInAppMessage;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    return-void

    .line 244
    :cond_1e
    :try_start_1e
    new-instance v1, Lcom/onesignal/OSInAppMessageController$2;

    invoke-direct {v1, p0, v0}, Lcom/onesignal/OSInAppMessageController$2;-><init>(Lcom/onesignal/OSInAppMessageController;Ljava/lang/String;)V

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in_app_messages/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/impression"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/onesignal/OSInAppMessageController$3;

    invoke-direct {v2, p0, p1}, Lcom/onesignal/OSInAppMessageController$3;-><init>(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;)V

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalRestClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_43} :catch_44

    goto :goto_4f

    :catch_44
    move-exception p1

    .line 271
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 272
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Unable to execute in-app message impression HTTP request due to invalid JSON"

    invoke-static {p1, v0}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    :goto_4f
    return-void
.end method

.method receivedInAppMessageJson(Lorg/json/JSONArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 168
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PREFS_OS_CACHED_IAMS"

    .line 168
    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Lcom/onesignal/OSInAppMessageController;->resetRedisplayMessagesBySession()V

    .line 174
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageController;->processInAppMessageJson(Lorg/json/JSONArray;)V

    return-void
.end method

.method public systemConditionChanged()V
    .registers 1

    .line 739
    invoke-direct {p0}, Lcom/onesignal/OSInAppMessageController;->attemptToShowInAppMessage()V

    return-void
.end method
