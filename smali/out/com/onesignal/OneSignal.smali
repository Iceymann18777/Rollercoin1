.class public Lcom/onesignal/OneSignal;
.super Ljava/lang/Object;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OneSignal$PromptActionResult;,
        Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;,
        Lcom/onesignal/OneSignal$OutcomeCallback;,
        Lcom/onesignal/OneSignal$PendingTaskRunnable;,
        Lcom/onesignal/OneSignal$IAPUpdateJob;,
        Lcom/onesignal/OneSignal$Builder;,
        Lcom/onesignal/OneSignal$EmailUpdateHandler;,
        Lcom/onesignal/OneSignal$EmailUpdateError;,
        Lcom/onesignal/OneSignal$EmailErrorType;,
        Lcom/onesignal/OneSignal$OSInternalExternalUserIdUpdateCompletionHandler;,
        Lcom/onesignal/OneSignal$SendTagsError;,
        Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;,
        Lcom/onesignal/OneSignal$GetTagsHandler;,
        Lcom/onesignal/OneSignal$IdsAvailableHandler;,
        Lcom/onesignal/OneSignal$NotificationReceivedHandler;,
        Lcom/onesignal/OneSignal$InAppMessageClickHandler;,
        Lcom/onesignal/OneSignal$NotificationOpenedHandler;,
        Lcom/onesignal/OneSignal$AppEntryAction;,
        Lcom/onesignal/OneSignal$OSInFocusDisplayOption;,
        Lcom/onesignal/OneSignal$LOG_LEVEL;
    }
.end annotation


# static fields
.field private static adIdProvider:Lcom/onesignal/AdvertisingIdentifierProvider;

.field private static apiClient:Lcom/onesignal/OneSignalAPIClient;

.field static appContext:Landroid/content/Context;

.field private static appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

.field static appId:Ljava/lang/String;

.field private static currentEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

.field private static currentPermissionState:Lcom/onesignal/OSPermissionState;

.field private static currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

.field static delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

.field private static emailId:Ljava/lang/String;

.field private static emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

.field private static emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

.field private static foreground:Z

.field private static getTagsCall:Z

.field private static iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

.field private static idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;

.field private static initDone:Z

.field private static lastLocationPoint:Lcom/onesignal/LocationController$LocationPoint;

.field static lastPermissionState:Lcom/onesignal/OSPermissionState;

.field private static lastRegistrationId:Ljava/lang/String;

.field static lastSubscriptionState:Lcom/onesignal/OSSubscriptionState;

.field static lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

.field private static locationFired:Z

.field private static logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

.field private static logger:Lcom/onesignal/OSLogger;

.field private static mGoogleProjectNumber:Ljava/lang/String;

.field static mInitBuilder:Lcom/onesignal/OneSignal$Builder;

.field private static mPushRegistrator:Lcom/onesignal/PushRegistrator;

.field private static osUtils:Lcom/onesignal/OSUtils;

.field private static outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

.field private static outcomeEventsFactory:Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

.field private static pendingGetTagsHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onesignal/OneSignal$GetTagsHandler;",
            ">;"
        }
    .end annotation
.end field

.field static pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

.field private static permissionStateChangesObserver:Lcom/onesignal/OSObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/OSObservable<",
            "Ljava/lang/Object;",
            "Lcom/onesignal/OSPermissionStateChanges;",
            ">;"
        }
    .end annotation
.end field

.field private static postedOpenedNotifIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static preferences:Lcom/onesignal/OSSharedPreferences;

.field private static promptedLocation:Z

.field private static registerForPushFired:Z

.field static remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

.field static requiresUserPrivacyConsent:Z

.field public static sdkType:Ljava/lang/String;

.field private static sessionListener:Lcom/onesignal/OSSessionManager$SessionListener;

.field private static sessionManager:Lcom/onesignal/OSSessionManager;

.field static shareLocation:Z

.field private static subscribableStatus:I

.field private static subscriptionStateChangesObserver:Lcom/onesignal/OSObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/OSObservable<",
            "Ljava/lang/Object;",
            "Lcom/onesignal/OSSubscriptionStateChanges;",
            ">;"
        }
    .end annotation
.end field

.field public static taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static trackAmazonPurchase:Lcom/onesignal/TrackAmazonPurchase;

.field private static trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

.field private static trackGooglePurchase:Lcom/onesignal/TrackGooglePurchase;

.field private static trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

.field private static unprocessedOpenedNotifis:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field private static userId:Ljava/lang/String;

.field private static visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

.field private static waitingToPostStateSync:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 399
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->NONE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    sput-object v0, Lcom/onesignal/OneSignal;->visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    .line 400
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    sput-object v0, Lcom/onesignal/OneSignal;->logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const/4 v0, 0x0

    .line 402
    sput-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    sput-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    .line 418
    sget-object v1, Lcom/onesignal/OneSignal$AppEntryAction;->APP_CLOSE:Lcom/onesignal/OneSignal$AppEntryAction;

    sput-object v1, Lcom/onesignal/OneSignal;->appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

    .line 425
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v1, Lcom/onesignal/OneSignal;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 426
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v1, Lcom/onesignal/OneSignal;->lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 436
    new-instance v1, Lcom/onesignal/OneSignal$1;

    invoke-direct {v1}, Lcom/onesignal/OneSignal$1;-><init>()V

    sput-object v1, Lcom/onesignal/OneSignal;->sessionListener:Lcom/onesignal/OSSessionManager$SessionListener;

    .line 447
    new-instance v1, Lcom/onesignal/OSLogWrapper;

    invoke-direct {v1}, Lcom/onesignal/OSLogWrapper;-><init>()V

    sput-object v1, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    .line 448
    new-instance v1, Lcom/onesignal/OneSignalRestClientWrapper;

    invoke-direct {v1}, Lcom/onesignal/OneSignalRestClientWrapper;-><init>()V

    sput-object v1, Lcom/onesignal/OneSignal;->apiClient:Lcom/onesignal/OneSignalAPIClient;

    .line 449
    new-instance v1, Lcom/onesignal/OSSharedPreferencesWrapper;

    invoke-direct {v1}, Lcom/onesignal/OSSharedPreferencesWrapper;-><init>()V

    sput-object v1, Lcom/onesignal/OneSignal;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 450
    new-instance v2, Lcom/onesignal/influence/OSTrackerFactory;

    sget-object v3, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    invoke-direct {v2, v1, v3}, Lcom/onesignal/influence/OSTrackerFactory;-><init>(Lcom/onesignal/OSSharedPreferences;Lcom/onesignal/OSLogger;)V

    sput-object v2, Lcom/onesignal/OneSignal;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    .line 451
    new-instance v1, Lcom/onesignal/OSSessionManager;

    sget-object v3, Lcom/onesignal/OneSignal;->sessionListener:Lcom/onesignal/OSSessionManager$SessionListener;

    sget-object v4, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    invoke-direct {v1, v3, v2, v4}, Lcom/onesignal/OSSessionManager;-><init>(Lcom/onesignal/OSSessionManager$SessionListener;Lcom/onesignal/influence/OSTrackerFactory;Lcom/onesignal/OSLogger;)V

    sput-object v1, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    const-string v1, "native"

    .line 466
    sput-object v1, Lcom/onesignal/OneSignal;->sdkType:Ljava/lang/String;

    .line 468
    new-instance v1, Lcom/onesignal/OSUtils;

    invoke-direct {v1}, Lcom/onesignal/OSUtils;-><init>()V

    sput-object v1, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    const/4 v1, 0x1

    .line 475
    sput-boolean v1, Lcom/onesignal/OneSignal;->shareLocation:Z

    .line 476
    new-instance v1, Lcom/onesignal/OneSignal$Builder;

    invoke-direct {v1, v0}, Lcom/onesignal/OneSignal$Builder;-><init>(Lcom/onesignal/OneSignal$1;)V

    sput-object v1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->unprocessedOpenedNotifis:Ljava/util/Collection;

    .line 479
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->postedOpenedNotifIds:Ljava/util/HashSet;

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->pendingGetTagsHandlers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 486
    sput-boolean v0, Lcom/onesignal/OneSignal;->requiresUserPrivacyConsent:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 1190
    invoke-static {p0, p1, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 1197
    sget-object v0, Lcom/onesignal/OneSignal;->logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-virtual {p0, v0}, Lcom/onesignal/OneSignal$LOG_LEVEL;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "OneSignal"

    if-ge v0, v1, :cond_36

    .line 1198
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v0, :cond_13

    .line 1199
    invoke-static {v2, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    .line 1200
    :cond_13
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v0, :cond_1b

    .line 1201
    invoke-static {v2, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    .line 1202
    :cond_1b
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v0, :cond_23

    .line 1203
    invoke-static {v2, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    .line 1204
    :cond_23
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v0, :cond_2b

    .line 1205
    invoke-static {v2, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    .line 1206
    :cond_2b
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-eq p0, v0, :cond_33

    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v0, :cond_36

    .line 1207
    :cond_33
    invoke-static {v2, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1210
    :cond_36
    :goto_36
    sget-object v0, Lcom/onesignal/OneSignal;->visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-virtual {p0, v0}, Lcom/onesignal/OneSignal$LOG_LEVEL;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ge v0, v1, :cond_97

    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_97

    .line 1212
    :try_start_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_88

    .line 1214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1215
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1216
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1217
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1218
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1222
    :cond_88
    new-instance p2, Lcom/onesignal/OneSignal$6;

    invoke-direct {p2, p0, p1}, Lcom/onesignal/OneSignal$6;-><init>(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V
    :try_end_90
    .catchall {:try_start_42 .. :try_end_90} :catchall_91

    goto :goto_97

    :catchall_91
    move-exception p0

    const-string p1, "Error showing logging message."

    .line 1233
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_97
    :goto_97
    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/OneSignal$Builder;)V
    .registers 1

    .line 87
    invoke-static {p0}, Lcom/onesignal/OneSignal;->init(Lcom/onesignal/OneSignal$Builder;)V

    return-void
.end method

.method static synthetic access$100()Lcom/onesignal/OSOutcomeEventsController;
    .registers 1

    .line 87
    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    return-object v0
.end method

.method static synthetic access$1000(I)Z
    .registers 1

    .line 87
    invoke-static {p0}, Lcom/onesignal/OneSignal;->pushStatusRuntimeError(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1102(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 87
    sput-object p0, Lcom/onesignal/OneSignal;->lastRegistrationId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Z)Z
    .registers 1

    .line 87
    sput-boolean p0, Lcom/onesignal/OneSignal;->registerForPushFired:Z

    return p0
.end method

.method static synthetic access$1300(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;
    .registers 1

    .line 87
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1402(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 87
    sput-object p0, Lcom/onesignal/OneSignal;->mGoogleProjectNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500()Lcom/onesignal/OSSharedPreferences;
    .registers 1

    .line 87
    sget-object v0, Lcom/onesignal/OneSignal;->preferences:Lcom/onesignal/OSSharedPreferences;

    return-object v0
.end method

.method static synthetic access$1600()Lcom/onesignal/OSLogger;
    .registers 1

    .line 87
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    return-object v0
.end method

.method static synthetic access$1700()Lcom/onesignal/influence/OSTrackerFactory;
    .registers 1

    .line 87
    sget-object v0, Lcom/onesignal/OneSignal;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    return-object v0
.end method

.method static synthetic access$1800()V
    .registers 0

    .line 87
    invoke-static {}, Lcom/onesignal/OneSignal;->registerForPushToken()V

    return-void
.end method

.method static synthetic access$1900()V
    .registers 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 87
    invoke-static {}, Lcom/onesignal/OneSignal;->registerUserTask()V

    return-void
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .registers 1

    .line 87
    sget-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200()Ljava/util/ArrayList;
    .registers 1

    .line 87
    sget-object v0, Lcom/onesignal/OneSignal;->pendingGetTagsHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400()Z
    .registers 1

    .line 87
    sget-boolean v0, Lcom/onesignal/OneSignal;->getTagsCall:Z

    return v0
.end method

.method static synthetic access$2402(Z)Z
    .registers 1

    .line 87
    sput-boolean p0, Lcom/onesignal/OneSignal;->getTagsCall:Z

    return p0
.end method

.method static synthetic access$2500()V
    .registers 0

    .line 87
    invoke-static {}, Lcom/onesignal/OneSignal;->internalFireIdsAvailableCallback()V

    return-void
.end method

.method static synthetic access$2602(Z)Z
    .registers 1

    .line 87
    sput-boolean p0, Lcom/onesignal/OneSignal;->promptedLocation:Z

    return p0
.end method

.method static synthetic access$400(J)V
    .registers 2

    .line 87
    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->onTaskRan(J)V

    return-void
.end method

.method static synthetic access$602(Lcom/onesignal/LocationController$LocationPoint;)Lcom/onesignal/LocationController$LocationPoint;
    .registers 1

    .line 87
    sput-object p0, Lcom/onesignal/OneSignal;->lastLocationPoint:Lcom/onesignal/LocationController$LocationPoint;

    return-object p0
.end method

.method static synthetic access$702(Z)Z
    .registers 1

    .line 87
    sput-boolean p0, Lcom/onesignal/OneSignal;->locationFired:Z

    return p0
.end method

.method static synthetic access$800()V
    .registers 0

    .line 87
    invoke-static {}, Lcom/onesignal/OneSignal;->registerUser()V

    return-void
.end method

.method static synthetic access$900()I
    .registers 1

    .line 87
    sget v0, Lcom/onesignal/OneSignal;->subscribableStatus:I

    return v0
.end method

.method static synthetic access$902(I)I
    .registers 1

    .line 87
    sput p0, Lcom/onesignal/OneSignal;->subscribableStatus:I

    return p0
.end method

.method static addNetType(Lorg/json/JSONObject;)V
    .registers 3

    :try_start_0
    const-string v0, "net_type"

    .line 1315
    sget-object v1, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {v1}, Lcom/onesignal/OSUtils;->getNetType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_b

    :catchall_b
    return-void
.end method

.method private static addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V
    .registers 6

    .line 909
    sget-object v0, Lcom/onesignal/OneSignal;->lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/onesignal/OneSignal$PendingTaskRunnable;->access$502(Lcom/onesignal/OneSignal$PendingTaskRunnable;J)J

    .line 911
    sget-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2d

    .line 912
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding a task to the pending queue with ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;->access$500(Lcom/onesignal/OneSignal$PendingTaskRunnable;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 914
    sget-object v0, Lcom/onesignal/OneSignal;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_74

    .line 916
    :cond_2d
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_74

    .line 917
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executor is still running, add to the executor with ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;->access$500(Lcom/onesignal/OneSignal$PendingTaskRunnable;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 920
    :try_start_4d
    sget-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_52
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4d .. :try_end_52} :catch_53

    goto :goto_74

    :catch_53
    move-exception v0

    .line 922
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executor is shutdown, running task manually with ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;->access$500(Lcom/onesignal/OneSignal$PendingTaskRunnable;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 927
    invoke-virtual {p0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;->run()V

    .line 928
    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    :cond_74
    :goto_74
    return-void
.end method

.method static areNotificationsEnabledForSubscribedState()Z
    .registers 1

    .line 3136
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-boolean v0, v0, Lcom/onesignal/OneSignal$Builder;->mUnsubscribeWhenNotificationsAreDisabled:Z

    if-eqz v0, :cond_d

    .line 3137
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OSUtils;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method static atLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;)Z
    .registers 3

    .line 1186
    sget-object v0, Lcom/onesignal/OneSignal;->visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-virtual {p0, v0}, Lcom/onesignal/OneSignal$LOG_LEVEL;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_13

    sget-object v0, Lcom/onesignal/OneSignal;->logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-virtual {p0, v0}, Lcom/onesignal/OneSignal$LOG_LEVEL;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-ge p0, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :cond_13
    :goto_13
    return v1
.end method

.method public static cancelNotification(I)V
    .registers 5

    .line 2704
    new-instance v0, Lcom/onesignal/OneSignal$23;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$23;-><init>(I)V

    .line 2744
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_14

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_14

    .line 2753
    :cond_10
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 2745
    :cond_14
    :goto_14
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OneSignal.init has not been called. Could not clear notification id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " at this time - movingthis operation to a waiting task queue. The notification will still be canceledfrom NotificationManager at this time."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2749
    sget-object p0, Lcom/onesignal/OneSignal;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static createInitBuilder(Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)Lcom/onesignal/OneSignal$Builder;
    .registers 4

    .line 787
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOptionCarryOver:Z

    .line 788
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iput-object p0, v0, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    .line 789
    sget-object p0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iput-object p1, p0, Lcom/onesignal/OneSignal$Builder;->mNotificationReceivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    .line 790
    sget-object p0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    return-object p0
.end method

.method public static deleteTags(Lorg/json/JSONArray;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    .registers 6

    const-string v0, "deleteTags()"

    .line 1934
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1938
    :cond_9
    :try_start_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 1940
    :goto_f
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 1941
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1943
    :cond_21
    invoke-static {v0, p1}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_25

    goto :goto_2d

    :catchall_25
    move-exception p0

    .line 1945
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Failed to generate JSON for deleteTags."

    invoke-static {p1, v0, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2d
    return-void
.end method

.method private static doSessionInit()V
    .registers 2

    .line 845
    invoke-static {}, Lcom/onesignal/OneSignal;->isPastOnSessionTime()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 846
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->setNewSession()V

    .line 847
    sget-boolean v0, Lcom/onesignal/OneSignal;->foreground:Z

    if-eqz v0, :cond_30

    .line 848
    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    invoke-virtual {v0}, Lcom/onesignal/OSOutcomeEventsController;->cleanOutcomes()V

    .line 849
    sget-object v0, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    invoke-static {}, Lcom/onesignal/OneSignal;->getAppEntryState()Lcom/onesignal/OneSignal$AppEntryAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/OSSessionManager;->restartSessionIfNeeded(Lcom/onesignal/OneSignal$AppEntryAction;)V

    goto :goto_30

    .line 851
    :cond_1c
    sget-boolean v0, Lcom/onesignal/OneSignal;->foreground:Z

    if-eqz v0, :cond_30

    .line 852
    invoke-static {}, Lcom/onesignal/OSInAppMessageController;->getController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessageController;->initWithCachedInAppMessages()V

    .line 853
    sget-object v0, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    invoke-static {}, Lcom/onesignal/OneSignal;->getAppEntryState()Lcom/onesignal/OneSignal$AppEntryAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/OSSessionManager;->attemptSessionUpgrade(Lcom/onesignal/OneSignal$AppEntryAction;)V

    .line 858
    :cond_30
    :goto_30
    sget-boolean v0, Lcom/onesignal/OneSignal;->foreground:Z

    if-nez v0, :cond_3b

    invoke-static {}, Lcom/onesignal/OneSignal;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_3b

    return-void

    .line 861
    :cond_3b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->setLastSessionTime(J)V

    .line 862
    invoke-static {}, Lcom/onesignal/OneSignal;->startRegistrationOrOnSession()V

    return-void
.end method

.method private static fireCallbackForOpenedNotifications()V
    .registers 4

    .line 1082
    sget-object v0, Lcom/onesignal/OneSignal;->unprocessedOpenedNotifis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1083
    invoke-static {v1, v2, v3}, Lcom/onesignal/OneSignal;->runNotificationOpenedCallback(Lorg/json/JSONArray;ZZ)V

    goto :goto_6

    .line 1085
    :cond_18
    sget-object v0, Lcom/onesignal/OneSignal;->unprocessedOpenedNotifis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method static fireEmailUpdateFailure()V
    .registers 4

    .line 3163
    sget-object v0, Lcom/onesignal/OneSignal;->emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    if-eqz v0, :cond_13

    .line 3164
    new-instance v1, Lcom/onesignal/OneSignal$EmailUpdateError;

    sget-object v2, Lcom/onesignal/OneSignal$EmailErrorType;->NETWORK:Lcom/onesignal/OneSignal$EmailErrorType;

    const-string v3, "Failed due to network failure. Will retry on next sync."

    invoke-direct {v1, v2, v3}, Lcom/onesignal/OneSignal$EmailUpdateError;-><init>(Lcom/onesignal/OneSignal$EmailErrorType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$EmailUpdateError;)V

    const/4 v0, 0x0

    .line 3165
    sput-object v0, Lcom/onesignal/OneSignal;->emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    :cond_13
    return-void
.end method

.method static fireEmailUpdateSuccess()V
    .registers 1

    .line 3156
    sget-object v0, Lcom/onesignal/OneSignal;->emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    if-eqz v0, :cond_a

    .line 3157
    invoke-interface {v0}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onSuccess()V

    const/4 v0, 0x0

    .line 3158
    sput-object v0, Lcom/onesignal/OneSignal;->emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    :cond_a
    return-void
.end method

.method static fireIdsAvailableCallback()V
    .registers 1

    .line 1981
    sget-object v0, Lcom/onesignal/OneSignal;->idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;

    if-eqz v0, :cond_c

    .line 1982
    new-instance v0, Lcom/onesignal/OneSignal$17;

    invoke-direct {v0}, Lcom/onesignal/OneSignal$17;-><init>()V

    invoke-static {v0}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method private static fireNotificationOpenedHandler(Lcom/onesignal/OSNotificationOpenResult;)V
    .registers 2

    .line 2128
    new-instance v0, Lcom/onesignal/OneSignal$18;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$18;-><init>(Lcom/onesignal/OSNotificationOpenResult;)V

    invoke-static {v0}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static generateOsNotificationOpenResult(Lorg/json/JSONArray;ZZ)Lcom/onesignal/OSNotificationOpenResult;
    .registers 15

    const-string v0, "actionId"

    .line 2083
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 2087
    new-instance v2, Lcom/onesignal/OSNotificationOpenResult;

    invoke-direct {v2}, Lcom/onesignal/OSNotificationOpenResult;-><init>()V

    .line 2088
    new-instance v3, Lcom/onesignal/OSNotification;

    invoke-direct {v3}, Lcom/onesignal/OSNotification;-><init>()V

    .line 2089
    invoke-static {}, Lcom/onesignal/OneSignal;->isAppActive()Z

    move-result v4

    iput-boolean v4, v3, Lcom/onesignal/OSNotification;->isAppInFocus:Z

    .line 2090
    iput-boolean p1, v3, Lcom/onesignal/OSNotification;->shown:Z

    const/4 p1, 0x0

    .line 2091
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "androidNotificationId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/onesignal/OSNotification;->androidNotificationId:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v7, v4

    const/4 v6, 0x0

    :goto_29
    if-ge v6, v1, :cond_7f

    .line 2097
    :try_start_2b
    invoke-virtual {p0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 2099
    invoke-static {v8}, Lcom/onesignal/NotificationBundleProcessor;->OSNotificationPayloadFrom(Lorg/json/JSONObject;)Lcom/onesignal/OSNotificationPayload;

    move-result-object v9

    iput-object v9, v3, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    if-nez v7, :cond_41

    .line 2100
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_41

    .line 2101
    invoke-virtual {v8, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_41
    if-eqz v5, :cond_45

    const/4 v5, 0x0

    goto :goto_7c

    .line 2106
    :cond_45
    iget-object v8, v3, Lcom/onesignal/OSNotification;->groupedNotifications:Ljava/util/List;

    if-nez v8, :cond_50

    .line 2107
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v3, Lcom/onesignal/OSNotification;->groupedNotifications:Ljava/util/List;

    .line 2108
    :cond_50
    iget-object v8, v3, Lcom/onesignal/OSNotification;->groupedNotifications:Ljava/util/List;

    iget-object v9, v3, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_57
    .catchall {:try_start_2b .. :try_end_57} :catchall_58

    goto :goto_7c

    :catchall_58
    move-exception v8

    .line 2111
    sget-object v9, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error parsing JSON item "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " for callback."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7c
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    .line 2115
    :cond_7f
    iput-object v3, v2, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    .line 2116
    new-instance p0, Lcom/onesignal/OSNotificationAction;

    invoke-direct {p0}, Lcom/onesignal/OSNotificationAction;-><init>()V

    iput-object p0, v2, Lcom/onesignal/OSNotificationOpenResult;->action:Lcom/onesignal/OSNotificationAction;

    .line 2117
    iget-object p0, v2, Lcom/onesignal/OSNotificationOpenResult;->action:Lcom/onesignal/OSNotificationAction;

    iput-object v7, p0, Lcom/onesignal/OSNotificationAction;->actionID:Ljava/lang/String;

    .line 2118
    iget-object p0, v2, Lcom/onesignal/OSNotificationOpenResult;->action:Lcom/onesignal/OSNotificationAction;

    if-eqz v7, :cond_93

    sget-object p1, Lcom/onesignal/OSNotificationAction$ActionType;->ActionTaken:Lcom/onesignal/OSNotificationAction$ActionType;

    goto :goto_95

    :cond_93
    sget-object p1, Lcom/onesignal/OSNotificationAction$ActionType;->Opened:Lcom/onesignal/OSNotificationAction$ActionType;

    :goto_95
    iput-object p1, p0, Lcom/onesignal/OSNotificationAction;->type:Lcom/onesignal/OSNotificationAction$ActionType;

    if-eqz p2, :cond_a0

    .line 2120
    iget-object p0, v2, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    sget-object p1, Lcom/onesignal/OSNotification$DisplayType;->InAppAlert:Lcom/onesignal/OSNotification$DisplayType;

    iput-object p1, p0, Lcom/onesignal/OSNotification;->displayType:Lcom/onesignal/OSNotification$DisplayType;

    goto :goto_a6

    .line 2122
    :cond_a0
    iget-object p0, v2, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    sget-object p1, Lcom/onesignal/OSNotification$DisplayType;->Notification:Lcom/onesignal/OSNotification$DisplayType;

    iput-object p1, p0, Lcom/onesignal/OSNotification;->displayType:Lcom/onesignal/OSNotification$DisplayType;

    :goto_a6
    return-object v2
.end method

.method private static declared-synchronized getAdIdProvider()Lcom/onesignal/AdvertisingIdentifierProvider;
    .registers 2

    const-class v0, Lcom/onesignal/OneSignal;

    monitor-enter v0

    .line 457
    :try_start_3
    sget-object v1, Lcom/onesignal/OneSignal;->adIdProvider:Lcom/onesignal/AdvertisingIdentifierProvider;

    if-nez v1, :cond_14

    .line 458
    invoke-static {}, Lcom/onesignal/OSUtils;->isAndroidDeviceType()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 459
    new-instance v1, Lcom/onesignal/AdvertisingIdProviderGPS;

    invoke-direct {v1}, Lcom/onesignal/AdvertisingIdProviderGPS;-><init>()V

    sput-object v1, Lcom/onesignal/OneSignal;->adIdProvider:Lcom/onesignal/AdvertisingIdentifierProvider;

    .line 462
    :cond_14
    sget-object v1, Lcom/onesignal/OneSignal;->adIdProvider:Lcom/onesignal/AdvertisingIdentifierProvider;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v0

    return-object v1

    :catchall_18
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static getAppEntryState()Lcom/onesignal/OneSignal$AppEntryAction;
    .registers 1

    .line 420
    sget-object v0, Lcom/onesignal/OneSignal;->appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

    return-object v0
.end method

.method static getClearGroupSummaryClick()Z
    .registers 3

    .line 2385
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "OS_CLEAR_GROUP_SUMMARY_CLICK"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getCurrentEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 565
    :cond_4
    sget-object p0, Lcom/onesignal/OneSignal;->currentEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    if-nez p0, :cond_1a

    .line 566
    new-instance p0, Lcom/onesignal/OSEmailSubscriptionState;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/onesignal/OSEmailSubscriptionState;-><init>(Z)V

    sput-object p0, Lcom/onesignal/OneSignal;->currentEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    .line 567
    iget-object p0, p0, Lcom/onesignal/OSEmailSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    new-instance v0, Lcom/onesignal/OSEmailSubscriptionChangedInternalObserver;

    invoke-direct {v0}, Lcom/onesignal/OSEmailSubscriptionChangedInternalObserver;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onesignal/OSObservable;->addObserverStrong(Ljava/lang/Object;)V

    .line 570
    :cond_1a
    sget-object p0, Lcom/onesignal/OneSignal;->currentEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    return-object p0
.end method

.method private static getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 497
    :cond_4
    sget-object p0, Lcom/onesignal/OneSignal;->currentPermissionState:Lcom/onesignal/OSPermissionState;

    if-nez p0, :cond_1a

    .line 498
    new-instance p0, Lcom/onesignal/OSPermissionState;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/onesignal/OSPermissionState;-><init>(Z)V

    sput-object p0, Lcom/onesignal/OneSignal;->currentPermissionState:Lcom/onesignal/OSPermissionState;

    .line 499
    iget-object p0, p0, Lcom/onesignal/OSPermissionState;->observable:Lcom/onesignal/OSObservable;

    new-instance v0, Lcom/onesignal/OSPermissionChangedInternalObserver;

    invoke-direct {v0}, Lcom/onesignal/OSPermissionChangedInternalObserver;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onesignal/OSObservable;->addObserverStrong(Ljava/lang/Object;)V

    .line 502
    :cond_1a
    sget-object p0, Lcom/onesignal/OneSignal;->currentPermissionState:Lcom/onesignal/OSPermissionState;

    return-object p0
.end method

.method private static getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 530
    :cond_4
    sget-object v0, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    if-nez v0, :cond_2f

    .line 531
    new-instance v0, Lcom/onesignal/OSSubscriptionState;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/OSPermissionState;->getEnabled()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OSSubscriptionState;-><init>(ZZ)V

    sput-object v0, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    .line 532
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object p0

    iget-object p0, p0, Lcom/onesignal/OSPermissionState;->observable:Lcom/onesignal/OSObservable;

    sget-object v0, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    invoke-virtual {p0, v0}, Lcom/onesignal/OSObservable;->addObserver(Ljava/lang/Object;)V

    .line 533
    sget-object p0, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    iget-object p0, p0, Lcom/onesignal/OSSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    new-instance v0, Lcom/onesignal/OSSubscriptionChangedInternalObserver;

    invoke-direct {v0}, Lcom/onesignal/OSSubscriptionChangedInternalObserver;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onesignal/OSObservable;->addObserverStrong(Ljava/lang/Object;)V

    .line 536
    :cond_2f
    sget-object p0, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    return-object p0
.end method

.method static getDBHelperInstance()Lcom/onesignal/OneSignalDbHelper;
    .registers 1

    .line 646
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v0

    return-object v0
.end method

.method static getEmailId()Ljava/lang/String;
    .registers 3

    .line 2310
    sget-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_17

    .line 2311
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "OS_EMAIL_ID"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    .line 2316
    :cond_17
    sget-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    return-object v0
.end method

.method static getFilterOtherGCMReceivers(Landroid/content/Context;)Z
    .registers 3

    .line 2331
    sget-object p0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v0, "OS_FILTER_OTHER_GCM_RECEIVERS"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static getFirebaseAnalyticsEnabled()Z
    .registers 3

    .line 2378
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_FIREBASE_TRACKING_ENABLED"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getInAppAlertNotificationEnabled()Z
    .registers 3

    .line 2503
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2504
    :cond_6
    iget-object v0, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    sget-object v2, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->InAppAlert:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    if-ne v0, v2, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method private static getLastSessionTime()J
    .registers 4

    .line 2450
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "OS_LAST_SESSION_TIME"

    const-wide/16 v2, -0x7918

    invoke-static {v0, v1, v2, v3}, Lcom/onesignal/OneSignalPrefs;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getNotificationsWhenActiveEnabled()Z
    .registers 3

    .line 2498
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 2499
    :cond_6
    iget-object v0, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    sget-object v2, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->Notification:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    if-ne v0, v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method static getPermissionStateChangesObserver()Lcom/onesignal/OSObservable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onesignal/OSObservable<",
            "Ljava/lang/Object;",
            "Lcom/onesignal/OSPermissionStateChanges;",
            ">;"
        }
    .end annotation

    .line 518
    sget-object v0, Lcom/onesignal/OneSignal;->permissionStateChangesObserver:Lcom/onesignal/OSObservable;

    if-nez v0, :cond_e

    .line 519
    new-instance v0, Lcom/onesignal/OSObservable;

    const/4 v1, 0x1

    const-string v2, "onOSPermissionChanged"

    invoke-direct {v0, v2, v1}, Lcom/onesignal/OSObservable;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/onesignal/OneSignal;->permissionStateChangesObserver:Lcom/onesignal/OSObservable;

    .line 520
    :cond_e
    sget-object v0, Lcom/onesignal/OneSignal;->permissionStateChangesObserver:Lcom/onesignal/OSObservable;

    return-object v0
.end method

.method private static getPushRegistrator()Lcom/onesignal/PushRegistrator;
    .registers 1

    .line 985
    sget-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    if-eqz v0, :cond_5

    return-object v0

    .line 988
    :cond_5
    invoke-static {}, Lcom/onesignal/OSUtils;->isFireOSDeviceType()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 989
    new-instance v0, Lcom/onesignal/PushRegistratorADM;

    invoke-direct {v0}, Lcom/onesignal/PushRegistratorADM;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    goto :goto_36

    .line 990
    :cond_13
    invoke-static {}, Lcom/onesignal/OSUtils;->isAndroidDeviceType()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 991
    invoke-static {}, Lcom/onesignal/OSUtils;->hasFCMLibrary()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 992
    new-instance v0, Lcom/onesignal/PushRegistratorFCM;

    invoke-direct {v0}, Lcom/onesignal/PushRegistratorFCM;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    goto :goto_36

    .line 994
    :cond_27
    new-instance v0, Lcom/onesignal/PushRegistratorGCM;

    invoke-direct {v0}, Lcom/onesignal/PushRegistratorGCM;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    goto :goto_36

    .line 997
    :cond_2f
    new-instance v0, Lcom/onesignal/PushRegistratorHMS;

    invoke-direct {v0}, Lcom/onesignal/PushRegistratorHMS;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    .line 999
    :goto_36
    sget-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    return-object v0
.end method

.method static getSavedAppId()Ljava/lang/String;
    .registers 1

    .line 2247
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getSavedAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSavedAppId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 2254
    :cond_4
    sget-object p0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_APP_ID"

    invoke-static {p0, v1, v0}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getSavedUserConsentStatus()Z
    .registers 3

    .line 2261
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "ONESIGNAL_USER_PROVIDED_CONSENT"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getSavedUserId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 2278
    :cond_4
    sget-object p0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_PLAYER_ID"

    invoke-static {p0, v1, v0}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getSessionManager()Lcom/onesignal/OSSessionManager;
    .registers 1

    .line 3195
    sget-object v0, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    return-object v0
.end method

.method static getSoundEnabled()Z
    .registers 3

    .line 2436
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_SOUND_ENABLED"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onesignal/OSObservable<",
            "Ljava/lang/Object;",
            "Lcom/onesignal/OSSubscriptionStateChanges;",
            ">;"
        }
    .end annotation

    .line 552
    sget-object v0, Lcom/onesignal/OneSignal;->subscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    if-nez v0, :cond_e

    .line 553
    new-instance v0, Lcom/onesignal/OSObservable;

    const/4 v1, 0x1

    const-string v2, "onOSSubscriptionChanged"

    invoke-direct {v0, v2, v1}, Lcom/onesignal/OSObservable;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/onesignal/OneSignal;->subscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    .line 554
    :cond_e
    sget-object v0, Lcom/onesignal/OneSignal;->subscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    return-object v0
.end method

.method private static getTimeZoneOffset()I
    .registers 3

    .line 1320
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1321
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    .line 1323
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1324
    invoke-virtual {v0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v0

    add-int/2addr v1, v0

    .line 1326
    :cond_1c
    div-int/lit16 v1, v1, 0x3e8

    return v1
.end method

.method static getUserId()Ljava/lang/String;
    .registers 1

    .line 2289
    sget-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    if-nez v0, :cond_e

    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_e

    .line 2290
    invoke-static {v0}, Lcom/onesignal/OneSignal;->getSavedUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    .line 2291
    :cond_e
    sget-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static getVibrate()Z
    .registers 3

    .line 2412
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_VIBRATE_ENABLED"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static handleActivityLifecycleHandler(Landroid/content/Context;)V
    .registers 2

    .line 824
    invoke-static {p0}, Lcom/onesignal/OneSignal;->isContextActivity(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/onesignal/OneSignal;->foreground:Z

    if-eqz v0, :cond_19

    .line 826
    check-cast p0, Landroid/app/Activity;

    sput-object p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    .line 827
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/NotificationRestorer;->asyncRestore(Landroid/content/Context;)V

    .line 828
    invoke-static {}, Lcom/onesignal/FocusTimeController;->getInstance()Lcom/onesignal/FocusTimeController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onesignal/FocusTimeController;->appForegrounded()V

    goto :goto_1c

    :cond_19
    const/4 p0, 0x1

    .line 831
    sput-boolean p0, Lcom/onesignal/ActivityLifecycleHandler;->nextResumeIsFirstActivity:Z

    :goto_1c
    return-void
.end method

.method private static handleAmazonPurchase()V
    .registers 2

    :try_start_0
    const-string v0, "com.amazon.device.iap.PurchasingListener"

    .line 836
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 837
    new-instance v0, Lcom/onesignal/TrackAmazonPurchase;

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/onesignal/TrackAmazonPurchase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/onesignal/OneSignal;->trackAmazonPurchase:Lcom/onesignal/TrackAmazonPurchase;
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_e} :catch_e

    :catch_e
    return-void
.end method

.method private static handleAppIdChange()V
    .registers 2

    .line 795
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 797
    sget-object v1, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 798
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "APP ID changed, clearing user id as it is no longer valid."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 799
    sget-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->saveAppId(Ljava/lang/String;)V

    .line 800
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->resetCurrentState()V

    const/4 v0, 0x0

    .line 801
    sput-object v0, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    goto :goto_2c

    :cond_21
    const/4 v0, 0x0

    .line 805
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/onesignal/BadgeCountUpdater;->updateCount(ILandroid/content/Context;)V

    .line 806
    sget-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->saveAppId(Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method static handleFailedEmailLogout()V
    .registers 4

    .line 3149
    sget-object v0, Lcom/onesignal/OneSignal;->emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    if-eqz v0, :cond_13

    .line 3150
    new-instance v1, Lcom/onesignal/OneSignal$EmailUpdateError;

    sget-object v2, Lcom/onesignal/OneSignal$EmailErrorType;->NETWORK:Lcom/onesignal/OneSignal$EmailErrorType;

    const-string v3, "Failed due to network failure. Will retry on next sync."

    invoke-direct {v1, v2, v3}, Lcom/onesignal/OneSignal$EmailUpdateError;-><init>(Lcom/onesignal/OneSignal$EmailErrorType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$EmailUpdateError;)V

    const/4 v0, 0x0

    .line 3151
    sput-object v0, Lcom/onesignal/OneSignal;->emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    :cond_13
    return-void
.end method

.method public static handleNotificationOpen(Landroid/content/Context;Lorg/json/JSONArray;ZLjava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    .line 2154
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 2157
    :cond_8
    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->notificationOpenedRESTCall(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 2159
    sget-object v0, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/onesignal/OneSignal;->getFirebaseAnalyticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2160
    sget-object v0, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    invoke-static {p1, v1, p2}, Lcom/onesignal/OneSignal;->generateOsNotificationOpenResult(Lorg/json/JSONArray;ZZ)Lcom/onesignal/OSNotificationOpenResult;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onesignal/TrackFirebaseAnalytics;->trackOpenedEvent(Lcom/onesignal/OSNotificationOpenResult;)V

    :cond_1f
    const/4 v0, 0x0

    const-string v2, "com.onesignal.NotificationOpened.DEFAULT"

    .line 2163
    invoke-static {p0, v2}, Lcom/onesignal/OSUtils;->getManifestMeta(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DISABLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 2166
    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->openURLFromNotification(Landroid/content/Context;Lorg/json/JSONArray;)Z

    move-result v0

    .line 2169
    :cond_32
    invoke-static {p0, p2, v0, v2}, Lcom/onesignal/OneSignal;->shouldInitDirectSessionFromNotificationOpen(Landroid/content/Context;ZZZ)Z

    move-result p0

    if-eqz p0, :cond_41

    .line 2171
    sget-object p0, Lcom/onesignal/OneSignal$AppEntryAction;->NOTIFICATION_CLICK:Lcom/onesignal/OneSignal$AppEntryAction;

    sput-object p0, Lcom/onesignal/OneSignal;->appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

    .line 2172
    sget-object v0, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    invoke-virtual {v0, p0, p3}, Lcom/onesignal/OSSessionManager;->onDirectInfluenceFromNotificationOpen(Lcom/onesignal/OneSignal$AppEntryAction;Ljava/lang/String;)V

    .line 2175
    :cond_41
    invoke-static {p1, v1, p2}, Lcom/onesignal/OneSignal;->runNotificationOpenedCallback(Lorg/json/JSONArray;ZZ)V

    return-void
.end method

.method static handleNotificationReceived(Lorg/json/JSONArray;ZZ)V
    .registers 3

    .line 2140
    invoke-static {p0, p1, p2}, Lcom/onesignal/OneSignal;->generateOsNotificationOpenResult(Lorg/json/JSONArray;ZZ)Lcom/onesignal/OSNotificationOpenResult;

    move-result-object p0

    .line 2141
    sget-object p1, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    if-eqz p1, :cond_13

    invoke-static {}, Lcom/onesignal/OneSignal;->getFirebaseAnalyticsEnabled()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 2142
    sget-object p1, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    invoke-virtual {p1, p0}, Lcom/onesignal/TrackFirebaseAnalytics;->trackReceivedEvent(Lcom/onesignal/OSNotificationOpenResult;)V

    .line 2144
    :cond_13
    sget-object p1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    if-eqz p1, :cond_25

    iget-object p1, p1, Lcom/onesignal/OneSignal$Builder;->mNotificationReceivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    if-nez p1, :cond_1c

    goto :goto_25

    .line 2147
    :cond_1c
    sget-object p1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object p1, p1, Lcom/onesignal/OneSignal$Builder;->mNotificationReceivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    iget-object p0, p0, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    invoke-interface {p1, p0}, Lcom/onesignal/OneSignal$NotificationReceivedHandler;->notificationReceived(Lcom/onesignal/OSNotification;)V

    :cond_25
    :goto_25
    return-void
.end method

.method static handleSuccessfulEmailLogout()V
    .registers 1

    .line 3142
    sget-object v0, Lcom/onesignal/OneSignal;->emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    if-eqz v0, :cond_a

    .line 3143
    invoke-interface {v0}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onSuccess()V

    const/4 v0, 0x0

    .line 3144
    sput-object v0, Lcom/onesignal/OneSignal;->emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    :cond_a
    return-void
.end method

.method static hasEmailId()Z
    .registers 1

    .line 2306
    sget-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static hasUserId()Z
    .registers 1

    .line 2285
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)V
    .registers 13

    .line 703
    invoke-static {p3, p4}, Lcom/onesignal/OneSignal;->createInitBuilder(Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)Lcom/onesignal/OneSignal$Builder;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    .line 704
    invoke-static {p0}, Lcom/onesignal/OneSignal;->setAppContext(Landroid/content/Context;)V

    .line 705
    invoke-static {p0}, Lcom/onesignal/OneSignal;->setupPrivacyConsent(Landroid/content/Context;)V

    .line 707
    invoke-static {}, Lcom/onesignal/OneSignal;->requiresUserPrivacyConsent()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 708
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal SDK initialization delayed, user privacy consent is set to required for this application."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 709
    new-instance v0, Lcom/onesignal/DelayedConsentInitializationParameters;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/onesignal/DelayedConsentInitializationParameters;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)V

    sput-object v0, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    return-void

    .line 713
    :cond_27
    invoke-static {p3, p4}, Lcom/onesignal/OneSignal;->createInitBuilder(Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)Lcom/onesignal/OneSignal$Builder;

    move-result-object p3

    sput-object p3, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    .line 715
    invoke-static {}, Lcom/onesignal/OneSignal;->isGoogleProjectNumberRemote()Z

    move-result p3

    if-nez p3, :cond_35

    .line 716
    sput-object p1, Lcom/onesignal/OneSignal;->mGoogleProjectNumber:Ljava/lang/String;

    .line 718
    :cond_35
    sget-object p1, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {p1, p0, p2}, Lcom/onesignal/OSUtils;->initializationChecker(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/onesignal/OneSignal;->subscribableStatus:I

    .line 719
    invoke-static {}, Lcom/onesignal/OneSignal;->isSubscriptionStatusUninitializable()Z

    move-result p1

    if-eqz p1, :cond_44

    return-void

    .line 724
    :cond_44
    sget-object p1, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    if-eqz p1, :cond_51

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_51

    const/4 p1, 0x0

    .line 725
    sput-boolean p1, Lcom/onesignal/OneSignal;->initDone:Z

    .line 727
    :cond_51
    sget-boolean p1, Lcom/onesignal/OneSignal;->initDone:Z

    if-eqz p1, :cond_5f

    .line 728
    sget-object p0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object p0, p0, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    if-eqz p0, :cond_5e

    .line 729
    invoke-static {}, Lcom/onesignal/OneSignal;->fireCallbackForOpenedNotifications()V

    :cond_5e
    return-void

    .line 734
    :cond_5f
    sput-object p2, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    .line 736
    sget-object p1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-boolean p1, p1, Lcom/onesignal/OneSignal$Builder;->mFilterOtherGCMReceivers:Z

    invoke-static {p1}, Lcom/onesignal/OneSignal;->saveFilterOtherGCMReceivers(Z)V

    .line 738
    invoke-static {p0}, Lcom/onesignal/OneSignal;->handleActivityLifecycleHandler(Landroid/content/Context;)V

    .line 740
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->initUserState()V

    .line 743
    invoke-static {}, Lcom/onesignal/OneSignal;->handleAmazonPurchase()V

    .line 746
    invoke-static {}, Lcom/onesignal/OneSignal;->handleAppIdChange()V

    .line 748
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object p0

    invoke-static {p0}, Lcom/onesignal/OSPermissionChangedInternalObserver;->handleInternalChanges(Lcom/onesignal/OSPermissionState;)V

    .line 752
    invoke-static {}, Lcom/onesignal/OneSignal;->doSessionInit()V

    .line 754
    sget-object p0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object p0, p0, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    if-eqz p0, :cond_89

    .line 755
    invoke-static {}, Lcom/onesignal/OneSignal;->fireCallbackForOpenedNotifications()V

    .line 757
    :cond_89
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/TrackGooglePurchase;->CanTrack(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_9a

    .line 758
    new-instance p0, Lcom/onesignal/TrackGooglePurchase;

    sget-object p1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/onesignal/TrackGooglePurchase;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/onesignal/OneSignal;->trackGooglePurchase:Lcom/onesignal/TrackGooglePurchase;

    .line 760
    :cond_9a
    invoke-static {}, Lcom/onesignal/TrackFirebaseAnalytics;->CanTrack()Z

    move-result p0

    if-eqz p0, :cond_a9

    .line 761
    new-instance p0, Lcom/onesignal/TrackFirebaseAnalytics;

    sget-object p1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/onesignal/TrackFirebaseAnalytics;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    .line 763
    :cond_a9
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/PushRegistratorFCM;->disableFirebaseInstanceIdService(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 765
    sput-boolean p0, Lcom/onesignal/OneSignal;->initDone:Z

    .line 767
    sget-object p0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    invoke-virtual {p0}, Lcom/onesignal/OSOutcomeEventsController;->sendSavedOutcomes()V

    .line 770
    invoke-static {}, Lcom/onesignal/OneSignal;->startPendingTasks()V

    return-void
.end method

.method private static init(Lcom/onesignal/OneSignal$Builder;)V
    .registers 5

    .line 672
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-boolean v0, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOptionCarryOver:Z

    if-eqz v0, :cond_c

    .line 673
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v0, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    iput-object v0, p0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    .line 674
    :cond_c
    sput-object p0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    .line 676
    iget-object p0, p0, Lcom/onesignal/OneSignal$Builder;->mContext:Landroid/content/Context;

    .line 677
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/onesignal/OneSignal$Builder;->mContext:Landroid/content/Context;

    .line 680
    :try_start_15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 681
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "onesignal_google_project_number"

    .line 683
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 684
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_38

    .line 685
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_38
    const-string v2, "onesignal_app_id"

    .line 687
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 688
    sget-object v2, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v2, v2, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    sget-object v3, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v3, v3, Lcom/onesignal/OneSignal$Builder;->mNotificationReceivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    invoke-static {p0, v1, v0, v2, v3}, Lcom/onesignal/OneSignal;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)V
    :try_end_49
    .catchall {:try_start_15 .. :try_end_49} :catchall_4a

    goto :goto_4e

    :catchall_4a
    move-exception p0

    .line 690
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4e
    return-void
.end method

.method private static internalFireGetTagsCallbacks()V
    .registers 3

    .line 1853
    sget-object v0, Lcom/onesignal/OneSignal;->pendingGetTagsHandlers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1854
    :try_start_3
    sget-object v1, Lcom/onesignal/OneSignal;->pendingGetTagsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_d

    monitor-exit v0

    return-void

    .line 1855
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1e

    .line 1857
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignal$15;

    invoke-direct {v1}, Lcom/onesignal/OneSignal$15;-><init>()V

    const-string v2, "OS_GETTAGS_CALLBACK"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1871
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_1e
    move-exception v1

    .line 1855
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private static declared-synchronized internalFireIdsAvailableCallback()V
    .registers 5

    const-class v0, Lcom/onesignal/OneSignal;

    monitor-enter v0

    .line 1992
    :try_start_3
    sget-object v1, Lcom/onesignal/OneSignal;->idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_28

    if-nez v1, :cond_9

    .line 1993
    monitor-exit v0

    return-void

    .line 1995
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object v1

    .line 1996
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getSubscribed()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_15

    move-object v1, v3

    .line 1999
    :cond_15
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v2
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_28

    if-nez v2, :cond_1d

    .line 2001
    monitor-exit v0

    return-void

    .line 2003
    :cond_1d
    :try_start_1d
    sget-object v4, Lcom/onesignal/OneSignal;->idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;

    invoke-interface {v4, v2, v1}, Lcom/onesignal/OneSignal$IdsAvailableHandler;->idsAvailable(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_26

    .line 2006
    sput-object v3, Lcom/onesignal/OneSignal;->idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_28

    .line 2007
    :cond_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static isAppActive()Z
    .registers 1

    .line 3127
    sget-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/onesignal/OneSignal;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static isContextActivity(Landroid/content/Context;)Z
    .registers 1

    .line 866
    instance-of p0, p0, Landroid/app/Activity;

    return p0
.end method

.method private static isDuplicateNotification(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 13

    const/4 v0, 0x0

    if-eqz p0, :cond_64

    const-string v1, ""

    .line 3074
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_64

    .line 3079
    :cond_c
    invoke-static {p1}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3083
    :try_start_12
    invoke-virtual {p1}, Lcom/onesignal/OneSignalDbHelper;->getSQLiteDatabaseWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string p1, "notification_id"

    .line 3085
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    new-array v7, v2, [Ljava/lang/String;

    aput-object p0, v7, v0

    const-string v4, "notification"

    const-string v6, "notification_id = ?"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 3088
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3095
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_2f
    .catchall {:try_start_12 .. :try_end_2f} :catchall_35

    if-eqz v1, :cond_43

    .line 3102
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_43

    :catchall_35
    move-exception p1

    .line 3098
    :try_start_36
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "Could not check for duplicate, assuming unique."

    invoke-static {v3, v4, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_5d

    if-eqz v1, :cond_42

    .line 3102
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_42
    const/4 p1, 0x0

    :cond_43
    :goto_43
    if-eqz p1, :cond_5c

    .line 3106
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate GCM message received, skip processing of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return v2

    :cond_5c
    return v0

    :catchall_5d
    move-exception p0

    if-eqz v1, :cond_63

    .line 3102
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3103
    :cond_63
    throw p0

    :cond_64
    :goto_64
    return v0
.end method

.method static isForeground()Z
    .registers 1

    .line 414
    sget-boolean v0, Lcom/onesignal/OneSignal;->foreground:Z

    return v0
.end method

.method private static isGoogleProjectNumberRemote()Z
    .registers 1

    .line 815
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/onesignal/OneSignalRemoteParams$Params;->googleProjectNumber:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static isInitDone()Z
    .registers 1

    .line 408
    sget-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    return v0
.end method

.method private static isPastOnSessionTime()Z
    .registers 5

    .line 3131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/onesignal/OneSignal;->getLastSessionTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v4, v0, v2

    if-ltz v4, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method private static isSubscriptionStatusUninitializable()Z
    .registers 2

    .line 820
    sget v0, Lcom/onesignal/OneSignal;->subscribableStatus:I

    const/16 v1, -0x3e7

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static logHttpError(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V
    .registers 7

    if-eqz p3, :cond_1f

    .line 1240
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->atLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_21

    :cond_1f
    const-string p3, ""

    .line 1242
    :goto_21
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static makeAndroidParamsRequest()V
    .registers 1

    .line 1032
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    if-eqz v0, :cond_8

    .line 1033
    invoke-static {}, Lcom/onesignal/OneSignal;->registerForPushToken()V

    return-void

    .line 1037
    :cond_8
    new-instance v0, Lcom/onesignal/OneSignal$5;

    invoke-direct {v0}, Lcom/onesignal/OneSignal$5;-><init>()V

    invoke-static {v0}, Lcom/onesignal/OneSignalRemoteParams;->makeAndroidParamsRequest(Lcom/onesignal/OneSignalRemoteParams$CallBack;)V

    return-void
.end method

.method static notValidOrDuplicated(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .registers 2

    .line 3114
    invoke-static {p1}, Lcom/onesignal/OSNotificationFormatHelper;->getOSNotificationIdFromJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 3115
    invoke-static {p1, p0}, Lcom/onesignal/OneSignal;->isDuplicateNotification(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private static notificationOpenedRESTCall(Landroid/content/Context;Lorg/json/JSONArray;)V
    .registers 7

    const/4 v0, 0x0

    .line 2205
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_78

    .line 2207
    :try_start_7
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 2208
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "custom"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "i"

    .line 2210
    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2213
    sget-object v2, Lcom/onesignal/OneSignal;->postedOpenedNotifIds:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_75

    .line 2215
    :cond_26
    sget-object v2, Lcom/onesignal/OneSignal;->postedOpenedNotifIds:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2217
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "app_id"

    .line 2218
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getSavedAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "player_id"

    .line 2219
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getSavedUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "opened"

    const/4 v4, 0x1

    .line 2220
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "device_type"

    .line 2221
    sget-object v4, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {v4}, Lcom/onesignal/OSUtils;->getDeviceType()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifications/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/onesignal/OneSignal$19;

    invoke-direct {v3}, Lcom/onesignal/OneSignal$19;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/onesignal/OneSignalRestClient;->put(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_6c
    .catchall {:try_start_7 .. :try_end_6c} :catchall_6d

    goto :goto_75

    :catchall_6d
    move-exception v1

    .line 2231
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Failed to generate JSON to send notification opened."

    invoke-static {v2, v3, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_78
    return-void
.end method

.method static onAppFocus()V
    .registers 2

    const/4 v0, 0x1

    .line 1281
    sput-boolean v0, Lcom/onesignal/OneSignal;->foreground:Z

    .line 1284
    sget-object v0, Lcom/onesignal/OneSignal;->appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

    sget-object v1, Lcom/onesignal/OneSignal$AppEntryAction;->NOTIFICATION_CLICK:Lcom/onesignal/OneSignal$AppEntryAction;

    invoke-virtual {v0, v1}, Lcom/onesignal/OneSignal$AppEntryAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1285
    sget-object v0, Lcom/onesignal/OneSignal$AppEntryAction;->APP_OPEN:Lcom/onesignal/OneSignal$AppEntryAction;

    sput-object v0, Lcom/onesignal/OneSignal;->appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

    .line 1287
    :cond_11
    invoke-static {}, Lcom/onesignal/LocationController;->onFocusChange()V

    const-string v0, "onAppFocus"

    .line 1290
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return-void

    .line 1293
    :cond_1d
    sget-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-static {v0}, Lcom/onesignal/OSUtils;->shouldLogMissingAppIdError(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    return-void

    .line 1296
    :cond_26
    invoke-static {}, Lcom/onesignal/FocusTimeController;->getInstance()Lcom/onesignal/FocusTimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/FocusTimeController;->appForegrounded()V

    .line 1298
    invoke-static {}, Lcom/onesignal/OneSignal;->doSessionInit()V

    .line 1300
    sget-object v0, Lcom/onesignal/OneSignal;->trackGooglePurchase:Lcom/onesignal/TrackGooglePurchase;

    if-eqz v0, :cond_37

    .line 1301
    invoke-virtual {v0}, Lcom/onesignal/TrackGooglePurchase;->trackIAP()V

    .line 1303
    :cond_37
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/NotificationRestorer;->asyncRestore(Landroid/content/Context;)V

    .line 1305
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSPermissionState;->refreshAsTo()V

    .line 1307
    sget-object v0, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    if-eqz v0, :cond_54

    invoke-static {}, Lcom/onesignal/OneSignal;->getFirebaseAnalyticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1308
    sget-object v0, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    invoke-virtual {v0}, Lcom/onesignal/TrackFirebaseAnalytics;->trackInfluenceOpenEvent()V

    .line 1310
    :cond_54
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignalSyncServiceUtils;->cancelSyncTask(Landroid/content/Context;)V

    return-void
.end method

.method static onAppLostFocus()V
    .registers 2

    const/4 v0, 0x0

    .line 1248
    sput-boolean v0, Lcom/onesignal/OneSignal;->foreground:Z

    .line 1249
    sget-object v0, Lcom/onesignal/OneSignal$AppEntryAction;->APP_CLOSE:Lcom/onesignal/OneSignal$AppEntryAction;

    sput-object v0, Lcom/onesignal/OneSignal;->appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

    .line 1251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->setLastSessionTime(J)V

    .line 1252
    invoke-static {}, Lcom/onesignal/LocationController;->onFocusChange()V

    .line 1254
    sget-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    if-nez v0, :cond_16

    return-void

    .line 1257
    :cond_16
    sget-object v0, Lcom/onesignal/OneSignal;->trackAmazonPurchase:Lcom/onesignal/TrackAmazonPurchase;

    if-eqz v0, :cond_1d

    .line 1258
    invoke-virtual {v0}, Lcom/onesignal/TrackAmazonPurchase;->checkListener()V

    .line 1260
    :cond_1d
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_29

    .line 1261
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Android Context not found, please call OneSignal.init when your app starts."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 1265
    :cond_29
    invoke-static {}, Lcom/onesignal/FocusTimeController;->getInstance()Lcom/onesignal/FocusTimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/FocusTimeController;->appBackgrounded()V

    .line 1267
    invoke-static {}, Lcom/onesignal/OneSignal;->scheduleSyncService()Z

    return-void
.end method

.method private static onTaskRan(J)V
    .registers 5

    .line 870
    sget-object v0, Lcom/onesignal/OneSignal;->lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v2, v0, p0

    if-nez v2, :cond_16

    .line 871
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p1, "Last Pending Task has ran, shutting down"

    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 872
    sget-object p0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_16
    return-void
.end method

.method public static onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    .registers 2

    .line 1093
    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void
.end method

.method private static openURLFromNotification(Landroid/content/Context;Lorg/json/JSONArray;)Z
    .registers 11

    const-string p0, "u"

    const-string v0, "custom"

    const/4 v1, 0x0

    .line 2041
    invoke-static {v1}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_d

    return v3

    .line 2044
    :cond_d
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v4, 0x0

    :goto_12
    if-ge v3, v2, :cond_60

    .line 2050
    :try_start_14
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 2051
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1f

    goto :goto_5d

    .line 2054
    :cond_1f
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2056
    invoke-virtual {v6, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 2057
    invoke-virtual {v6, p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5d

    .line 2059
    invoke-static {v5}, Lcom/onesignal/OSUtils;->openURLInBrowser(Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_39

    const/4 v4, 0x1

    goto :goto_5d

    :catchall_39
    move-exception v5

    .line 2064
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parsing JSON item "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for launching a web URL."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5d
    :goto_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_60
    return v4
.end method

.method static promptLocation(Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;Z)V
    .registers 3

    const-string v0, "promptLocation()"

    .line 2571
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 2574
    :cond_9
    new-instance v0, Lcom/onesignal/OneSignal$21;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/OneSignal$21;-><init>(Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;Z)V

    .line 2605
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz p0, :cond_1d

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1d

    .line 2613
    :cond_19
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 2606
    :cond_1d
    :goto_1d
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p1, "OneSignal.init has not been called. Could not prompt for location at this time - moving this operation to awaiting queue."

    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2609
    new-instance p0, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {p0, v0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    return-void
.end method

.method private static pushStatusRuntimeError(I)Z
    .registers 2

    const/4 v0, -0x6

    if-ge p0, v0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method private static registerForPushToken()V
    .registers 4

    .line 1003
    invoke-static {}, Lcom/onesignal/OneSignal;->getPushRegistrator()Lcom/onesignal/PushRegistrator;

    move-result-object v0

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    sget-object v2, Lcom/onesignal/OneSignal;->mGoogleProjectNumber:Ljava/lang/String;

    new-instance v3, Lcom/onesignal/OneSignal$4;

    invoke-direct {v3}, Lcom/onesignal/OneSignal$4;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/PushRegistrator;->registerForPush(Landroid/content/Context;Ljava/lang/String;Lcom/onesignal/PushRegistrator$RegisteredHandler;)V

    return-void
.end method

.method private static registerUser()V
    .registers 3

    .line 1330
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerUser:registerForPushFired:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/onesignal/OneSignal;->registerForPushFired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", locationFired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/onesignal/OneSignal;->locationFired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", remoteParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", appId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1338
    sget-boolean v0, Lcom/onesignal/OneSignal;->registerForPushFired:Z

    if-eqz v0, :cond_56

    sget-boolean v0, Lcom/onesignal/OneSignal;->locationFired:Z

    if-eqz v0, :cond_56

    sget-object v0, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    if-eqz v0, :cond_56

    sget-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    if-nez v0, :cond_47

    goto :goto_56

    .line 1341
    :cond_47
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignal$7;

    invoke-direct {v1}, Lcom/onesignal/OneSignal$7;-><init>()V

    const-string v2, "OS_REG_USER"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1350
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_56
    :goto_56
    return-void
.end method

.method private static registerUserTask()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1354
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1355
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1357
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1359
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1361
    invoke-static {}, Lcom/onesignal/OneSignal;->getAdIdProvider()Lcom/onesignal/AdvertisingIdentifierProvider;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 1362
    invoke-static {}, Lcom/onesignal/OneSignal;->getAdIdProvider()Lcom/onesignal/AdvertisingIdentifierProvider;

    move-result-object v3

    sget-object v4, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-interface {v3, v4}, Lcom/onesignal/AdvertisingIdentifierProvider;->getIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_31

    const-string v4, "ad_id"

    .line 1364
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1366
    :cond_31
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v4, "device_os"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1367
    invoke-static {}, Lcom/onesignal/OneSignal;->getTimeZoneOffset()I

    move-result v3

    const-string v4, "timezone"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1368
    invoke-static {}, Lcom/onesignal/OSUtils;->getCorrectedLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "language"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sdk"

    const-string v4, "031502"

    .line 1369
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1370
    sget-object v3, Lcom/onesignal/OneSignal;->sdkType:Ljava/lang/String;

    const-string v4, "sdk_type"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "android_package"

    .line 1371
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1372
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "device_model"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v3, 0x0

    :try_start_65
    const-string v4, "game_version"

    .line 1375
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_70
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_65 .. :try_end_70} :catch_71

    goto :goto_72

    :catch_71
    nop

    .line 1378
    :goto_72
    sget-object v0, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {v0}, Lcom/onesignal/OSUtils;->getNetType()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "net_type"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1379
    sget-object v0, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {v0}, Lcom/onesignal/OSUtils;->getCarrierName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "carrier"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1380
    invoke-static {}, Lcom/onesignal/RootToolsInternalMethods;->isRooted()Z

    move-result v0

    const-string v1, "rooted"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1382
    invoke-static {v2}, Lcom/onesignal/OneSignalStateSynchronizer;->updateDeviceInfo(Lorg/json/JSONObject;)V

    .line 1384
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1385
    sget-object v1, Lcom/onesignal/OneSignal;->lastRegistrationId:Ljava/lang/String;

    const-string v2, "identifier"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1386
    sget v1, Lcom/onesignal/OneSignal;->subscribableStatus:I

    const-string v2, "subscribableStatus"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1387
    invoke-static {}, Lcom/onesignal/OneSignal;->areNotificationsEnabledForSubscribedState()Z

    move-result v1

    const-string v2, "androidPermission"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1388
    sget-object v1, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {v1}, Lcom/onesignal/OSUtils;->getDeviceType()I

    move-result v1

    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1389
    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->updatePushState(Lorg/json/JSONObject;)V

    .line 1391
    sget-boolean v0, Lcom/onesignal/OneSignal;->shareLocation:Z

    if-eqz v0, :cond_c9

    sget-object v0, Lcom/onesignal/OneSignal;->lastLocationPoint:Lcom/onesignal/LocationController$LocationPoint;

    if-eqz v0, :cond_c9

    .line 1392
    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->updateLocation(Lcom/onesignal/LocationController$LocationPoint;)V

    :cond_c9
    const/4 v0, 0x1

    .line 1394
    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->readyToUpdate(Z)V

    .line 1396
    sput-boolean v3, Lcom/onesignal/OneSignal;->waitingToPostStateSync:Z

    return-void
.end method

.method public static requiresUserPrivacyConsent()Z
    .registers 1

    .line 1121
    sget-boolean v0, Lcom/onesignal/OneSignal;->requiresUserPrivacyConsent:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/onesignal/OneSignal;->userProvidedPrivacyConsent()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static runNotificationOpenedCallback(Lorg/json/JSONArray;ZZ)V
    .registers 4

    .line 2072
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    if-nez v0, :cond_9

    goto :goto_11

    .line 2077
    :cond_9
    invoke-static {p0, p1, p2}, Lcom/onesignal/OneSignal;->generateOsNotificationOpenResult(Lorg/json/JSONArray;ZZ)Lcom/onesignal/OSNotificationOpenResult;

    move-result-object p0

    invoke-static {p0}, Lcom/onesignal/OneSignal;->fireNotificationOpenedHandler(Lcom/onesignal/OSNotificationOpenResult;)V

    return-void

    .line 2073
    :cond_11
    :goto_11
    sget-object p1, Lcom/onesignal/OneSignal;->unprocessedOpenedNotifis:Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static saveAppId(Ljava/lang/String;)V
    .registers 3

    .line 2237
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 2240
    :cond_5
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_APP_ID"

    invoke-static {v0, v1, p0}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static saveEmailId(Ljava/lang/String;)V
    .registers 3

    .line 2320
    sput-object p0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    .line 2321
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez p0, :cond_7

    return-void

    .line 2324
    :cond_7
    sget-object p0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    sget-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    const-string v1, ""

    .line 2327
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    goto :goto_17

    :cond_15
    sget-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    :goto_17
    const-string v1, "OS_EMAIL_ID"

    .line 2324
    invoke-static {p0, v1, v0}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static saveFilterOtherGCMReceivers(Z)V
    .registers 3

    .line 2338
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 2341
    :cond_5
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "OS_FILTER_OTHER_GCM_RECEIVERS"

    invoke-static {v0, v1, p0}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static saveUserId(Ljava/lang/String;)V
    .registers 3

    .line 2295
    sput-object p0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    .line 2296
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez p0, :cond_7

    return-void

    .line 2299
    :cond_7
    sget-object p0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    sget-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    const-string v1, "GT_PLAYER_ID"

    invoke-static {p0, v1, v0}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static scheduleSyncService()Z
    .registers 2

    .line 1272
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->persist()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1274
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignalSyncServiceUtils;->scheduleSyncTask(Landroid/content/Context;)V

    .line 1276
    :cond_b
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/LocationController;->scheduleUpdate(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_18

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    :goto_19
    return v0
.end method

.method static sendClickActionOutcomes(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessageOutcome;",
            ">;)V"
        }
    .end annotation

    .line 3199
    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    if-nez v0, :cond_c

    .line 3200
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Make sure OneSignal.init is called first"

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 3204
    :cond_c
    invoke-virtual {v0, p0}, Lcom/onesignal/OSOutcomeEventsController;->sendClickActionOutcomes(Ljava/util/List;)V

    return-void
.end method

.method static sendPurchases(Lorg/json/JSONArray;ZLcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .registers 8

    const-string v0, "/on_purchase"

    const-string v1, "players/"

    const-string v2, "sendPurchases()"

    .line 2012
    invoke-static {v2}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    return-void

    .line 2015
    :cond_d
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_21

    .line 2016
    new-instance v0, Lcom/onesignal/OneSignal$IAPUpdateJob;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$IAPUpdateJob;-><init>(Lorg/json/JSONArray;)V

    sput-object v0, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    .line 2017
    iput-boolean p1, v0, Lcom/onesignal/OneSignal$IAPUpdateJob;->newAsExisting:Z

    .line 2018
    sget-object p0, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    iput-object p2, p0, Lcom/onesignal/OneSignal$IAPUpdateJob;->restResponseHandler:Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    return-void

    .line 2024
    :cond_21
    :try_start_21
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "app_id"

    .line 2025
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_37

    const-string p1, "existing"

    const/4 v3, 0x1

    .line 2027
    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_37
    const-string p1, "purchases"

    .line 2028
    invoke-virtual {v2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2030
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2, p2}, Lcom/onesignal/OneSignalRestClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    .line 2031
    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7e

    .line 2032
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v2, p1}, Lcom/onesignal/OneSignalRestClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_75
    .catchall {:try_start_21 .. :try_end_75} :catchall_76

    goto :goto_7e

    :catchall_76
    move-exception p0

    .line 2034
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p2, "Failed to generate JSON for sendPurchases."

    invoke-static {p1, p2, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7e
    :goto_7e
    return-void
.end method

.method public static sendTags(Lorg/json/JSONObject;)V
    .registers 2

    const/4 v0, 0x0

    .line 1638
    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V

    return-void
.end method

.method public static sendTags(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    .registers 5

    const-string v0, "sendTags()"

    .line 1657
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1660
    :cond_9
    new-instance v0, Lcom/onesignal/OneSignal$12;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/OneSignal$12;-><init>(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V

    .line 1701
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz p0, :cond_1d

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1d

    .line 1711
    :cond_19
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1702
    :cond_1d
    :goto_1d
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "You must initialize OneSignal before modifying tags!Moving this operation to a pending task queue."

    invoke-static {p0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    if-eqz p1, :cond_2f

    .line 1705
    new-instance p0, Lcom/onesignal/OneSignal$SendTagsError;

    const/4 v2, -0x1

    invoke-direct {p0, v2, v1}, Lcom/onesignal/OneSignal$SendTagsError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$SendTagsError;)V

    .line 1707
    :cond_2f
    new-instance p0, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {p0, v0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    return-void
.end method

.method public static setAppContext(Landroid/content/Context;)V
    .registers 6

    if-nez p0, :cond_a

    .line 621
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "setAppContext(null) is not valid, ignoring!"

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 625
    :cond_a
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 626
    :goto_11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    .line 629
    check-cast v1, Landroid/app/Application;

    invoke-static {v1}, Lcom/onesignal/ActivityLifecycleListener;->registerActivityLifecycleCallbacks(Landroid/app/Application;)V

    if-eqz v0, :cond_49

    .line 632
    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsFactory:Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

    if-nez v0, :cond_33

    .line 633
    new-instance v0, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

    sget-object v1, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    sget-object v2, Lcom/onesignal/OneSignal;->apiClient:Lcom/onesignal/OneSignalAPIClient;

    invoke-static {}, Lcom/onesignal/OneSignal;->getDBHelperInstance()Lcom/onesignal/OneSignalDbHelper;

    move-result-object v3

    sget-object v4, Lcom/onesignal/OneSignal;->preferences:Lcom/onesignal/OSSharedPreferences;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;-><init>(Lcom/onesignal/OSLogger;Lcom/onesignal/OneSignalAPIClient;Lcom/onesignal/OneSignalDb;Lcom/onesignal/OSSharedPreferences;)V

    sput-object v0, Lcom/onesignal/OneSignal;->outcomeEventsFactory:Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

    .line 635
    :cond_33
    sget-object v0, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    invoke-virtual {v0}, Lcom/onesignal/OSSessionManager;->initSessionFromCache()V

    .line 636
    new-instance v0, Lcom/onesignal/OSOutcomeEventsController;

    sget-object v1, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    sget-object v2, Lcom/onesignal/OneSignal;->outcomeEventsFactory:Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OSOutcomeEventsController;-><init>(Lcom/onesignal/OSSessionManager;Lcom/onesignal/outcomes/OSOutcomeEventsFactory;)V

    sput-object v0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    .line 639
    invoke-static {}, Lcom/onesignal/OneSignalPrefs;->startDelayedWrite()V

    .line 641
    invoke-static {p0}, Lcom/onesignal/OneSignalCacheCleaner;->cleanOldCachedData(Landroid/content/Context;)V

    :cond_49
    return-void
.end method

.method static setLastSessionTime(J)V
    .registers 4

    .line 2443
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "OS_LAST_SESSION_TIME"

    invoke-static {v0, v1, p0, p1}, Lcom/onesignal/OneSignalPrefs;->saveLong(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static setRequiresUserPrivacyConsent(Z)V
    .registers 2

    .line 1108
    sget-boolean v0, Lcom/onesignal/OneSignal;->requiresUserPrivacyConsent:Z

    if-eqz v0, :cond_e

    if-nez p0, :cond_e

    .line 1109
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Cannot change requiresUserPrivacyConsent() from TRUE to FALSE"

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 1113
    :cond_e
    sput-boolean p0, Lcom/onesignal/OneSignal;->requiresUserPrivacyConsent:Z

    return-void
.end method

.method private static setupPrivacyConsent(Landroid/content/Context;)V
    .registers 3

    .line 775
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 776
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.onesignal.PrivacyConsent"

    .line 779
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ENABLE"

    .line 780
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lcom/onesignal/OneSignal;->setRequiresUserPrivacyConsent(Z)V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception p0

    .line 782
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_24
    return-void
.end method

.method private static shouldInitDirectSessionFromNotificationOpen(Landroid/content/Context;ZZZ)Z
    .registers 4

    if-nez p1, :cond_12

    if-nez p2, :cond_12

    if-nez p3, :cond_12

    .line 2197
    sget-boolean p1, Lcom/onesignal/OneSignal;->foreground:Z

    if-nez p1, :cond_12

    .line 2201
    invoke-static {p0}, Lcom/onesignal/OneSignal;->startOrResumeApp(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method static shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z
    .registers 4

    .line 1125
    invoke-static {}, Lcom/onesignal/OneSignal;->requiresUserPrivacyConsent()Z

    move-result v0

    if-eqz v0, :cond_25

    if-eqz p0, :cond_23

    .line 1127
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " was called before the user provided privacy consent. Your application is set to require the user\'s privacy consent before the OneSignal SDK can be initialized. Please ensure the user has provided consent before calling this method. You can check the latest OneSignal consent status by calling OneSignal.userProvidedPrivacyConsent()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    :cond_23
    const/4 p0, 0x1

    return p0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method private static shouldRunTaskThroughQueue()Z
    .registers 3

    .line 935
    sget-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_a

    return v1

    .line 939
    :cond_a
    sget-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    const/4 v2, 0x1

    if-nez v0, :cond_14

    sget-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_14

    return v2

    .line 943
    :cond_14
    sget-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1f

    return v2

    :cond_1f
    return v1
.end method

.method public static startInit(Landroid/content/Context;)Lcom/onesignal/OneSignal$Builder;
    .registers 3

    .line 661
    new-instance v0, Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/onesignal/OneSignal$Builder;-><init>(Landroid/content/Context;Lcom/onesignal/OneSignal$1;)V

    return-object v0
.end method

.method private static startLocationUpdate()V
    .registers 5

    .line 964
    new-instance v0, Lcom/onesignal/OneSignal$3;

    invoke-direct {v0}, Lcom/onesignal/OneSignal$3;-><init>()V

    .line 976
    sget-object v1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-boolean v1, v1, Lcom/onesignal/OneSignal$Builder;->mPromptLocation:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_13

    sget-boolean v1, Lcom/onesignal/OneSignal;->promptedLocation:Z

    if-nez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 978
    :goto_14
    sget-boolean v4, Lcom/onesignal/OneSignal;->promptedLocation:Z

    if-nez v4, :cond_20

    sget-object v4, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-boolean v4, v4, Lcom/onesignal/OneSignal$Builder;->mPromptLocation:Z

    if-eqz v4, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :cond_20
    :goto_20
    sput-boolean v2, Lcom/onesignal/OneSignal;->promptedLocation:Z

    .line 980
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v2, v1, v3, v0}, Lcom/onesignal/LocationController;->getLocation(Landroid/content/Context;ZZLcom/onesignal/LocationController$LocationHandler;)V

    return-void
.end method

.method static startOrResumeApp(Landroid/content/Context;)Z
    .registers 3

    .line 2179
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_18

    const/high16 v1, 0x10020000

    .line 2182
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2183
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private static startPendingTasks()V
    .registers 2

    .line 892
    sget-object v0, Lcom/onesignal/OneSignal;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 893
    new-instance v0, Lcom/onesignal/OneSignal$2;

    invoke-direct {v0}, Lcom/onesignal/OneSignal$2;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 902
    :goto_13
    sget-object v0, Lcom/onesignal/OneSignal;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 903
    sget-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcom/onesignal/OneSignal;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_13

    :cond_29
    return-void
.end method

.method private static startRegistrationOrOnSession()V
    .registers 2

    .line 950
    sget-boolean v0, Lcom/onesignal/OneSignal;->waitingToPostStateSync:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 952
    sput-boolean v0, Lcom/onesignal/OneSignal;->waitingToPostStateSync:Z

    .line 954
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getSyncAsNewSession()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 955
    sput-boolean v1, Lcom/onesignal/OneSignal;->locationFired:Z

    .line 957
    :cond_11
    invoke-static {}, Lcom/onesignal/OneSignal;->startLocationUpdate()V

    .line 959
    sput-boolean v1, Lcom/onesignal/OneSignal;->registerForPushFired:Z

    .line 960
    invoke-static {}, Lcom/onesignal/OneSignal;->makeAndroidParamsRequest()V

    return-void
.end method

.method static updateEmailIdDependents(Ljava/lang/String;)V
    .registers 3

    .line 2367
    invoke-static {p0}, Lcom/onesignal/OneSignal;->saveEmailId(Ljava/lang/String;)V

    .line 2368
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSEmailSubscriptionState;->setEmailUserId(Ljava/lang/String;)V

    .line 2370
    :try_start_c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "parent_player_id"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 2371
    invoke-static {p0}, Lcom/onesignal/OneSignalStateSynchronizer;->updatePushState(Lorg/json/JSONObject;)V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p0

    .line 2373
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1f
    return-void
.end method

.method static updateUserIdDependents(Ljava/lang/String;)V
    .registers 4

    .line 2350
    invoke-static {p0}, Lcom/onesignal/OneSignal;->saveUserId(Ljava/lang/String;)V

    .line 2351
    invoke-static {}, Lcom/onesignal/OneSignal;->fireIdsAvailableCallback()V

    .line 2352
    invoke-static {}, Lcom/onesignal/OneSignal;->internalFireGetTagsCallbacks()V

    .line 2354
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSSubscriptionState;->setUserId(Ljava/lang/String;)V

    .line 2356
    sget-object v0, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    if-eqz v0, :cond_26

    .line 2357
    iget-object v0, v0, Lcom/onesignal/OneSignal$IAPUpdateJob;->toReport:Lorg/json/JSONArray;

    sget-object v1, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    iget-boolean v1, v1, Lcom/onesignal/OneSignal$IAPUpdateJob;->newAsExisting:Z

    sget-object v2, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    iget-object v2, v2, Lcom/onesignal/OneSignal$IAPUpdateJob;->restResponseHandler:Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignal;->sendPurchases(Lorg/json/JSONArray;ZLcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    const/4 v0, 0x0

    .line 2358
    sput-object v0, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    .line 2361
    :cond_26
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->refreshEmailState()V

    .line 2363
    sget-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-static {}, Lcom/onesignal/AdvertisingIdProviderGPS;->getLastValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/onesignal/OneSignalChromeTabAndroidFrame;->setup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static userProvidedPrivacyConsent()Z
    .registers 1

    .line 811
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedUserConsentStatus()Z

    move-result v0

    return v0
.end method
