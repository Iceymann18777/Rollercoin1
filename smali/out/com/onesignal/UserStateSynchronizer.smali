.class abstract Lcom/onesignal/UserStateSynchronizer;
.super Ljava/lang/Object;
.source "UserStateSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;,
        Lcom/onesignal/UserStateSynchronizer$GetTagsResult;
    }
.end annotation


# instance fields
.field private canMakeUpdates:Z

.field private channel:Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

.field protected currentUserState:Lcom/onesignal/UserState;

.field private final externalUserIdUpdateHandlers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/onesignal/OneSignal$OSInternalExternalUserIdUpdateCompletionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final networkHandlerSyncLock:Ljava/lang/Object;

.field networkHandlerThreads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field private runningSyncUserState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final sendTagsHandlers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected final syncLock:Ljava/lang/Object;

.field protected toSyncUserState:Lcom/onesignal/UserState;

.field protected waitingForSessionResponse:Z


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/onesignal/UserStateSynchronizer$1;

    invoke-direct {v0, p0}, Lcom/onesignal/UserStateSynchronizer$1;-><init>(Lcom/onesignal/UserStateSynchronizer;)V

    iput-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->runningSyncUserState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->sendTagsHandlers:Ljava/util/Queue;

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->externalUserIdUpdateHandlers:Ljava/util/Queue;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->networkHandlerThreads:Ljava/util/HashMap;

    .line 140
    new-instance v0, Lcom/onesignal/UserStateSynchronizer$2;

    invoke-direct {v0, p0}, Lcom/onesignal/UserStateSynchronizer$2;-><init>(Lcom/onesignal/UserStateSynchronizer;)V

    iput-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->networkHandlerSyncLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/onesignal/UserStateSynchronizer;->waitingForSessionResponse:Z

    .line 28
    iput-object p1, p0, Lcom/onesignal/UserStateSynchronizer;->channel:Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/UserStateSynchronizer;)Z
    .registers 1

    .line 23
    iget-boolean p0, p0, Lcom/onesignal/UserStateSynchronizer;->canMakeUpdates:Z

    return p0
.end method

.method static synthetic access$100(Lcom/onesignal/UserStateSynchronizer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/onesignal/UserStateSynchronizer;->runningSyncUserState:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/onesignal/UserStateSynchronizer;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/UserStateSynchronizer;->response400WithErrorsContaining(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/onesignal/UserStateSynchronizer;)V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->logoutEmailSyncSuccess()V

    return-void
.end method

.method static synthetic access$400(Lcom/onesignal/UserStateSynchronizer;)V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->handlePlayerDeletedFromServer()V

    return-void
.end method

.method static synthetic access$500(Lcom/onesignal/UserStateSynchronizer;I)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lcom/onesignal/UserStateSynchronizer;->handleNetworkFailure(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/onesignal/UserStateSynchronizer;Lcom/onesignal/OneSignal$SendTagsError;)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lcom/onesignal/UserStateSynchronizer;->sendTagsHandlersPerformOnFailure(Lcom/onesignal/OneSignal$SendTagsError;)V

    return-void
.end method

.method static synthetic access$700(Lcom/onesignal/UserStateSynchronizer;)V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->externalUserIdUpdateHandlersPerformOnFailure()V

    return-void
.end method

.method static synthetic access$800(Lcom/onesignal/UserStateSynchronizer;)V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->sendTagsHandlersPerformOnSuccess()V

    return-void
.end method

.method static synthetic access$900(Lcom/onesignal/UserStateSynchronizer;)V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->externalUserIdUpdateHandlersPerformOnSuccess()V

    return-void
.end method

.method private doCreateOrNewSession(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 6

    if-nez p1, :cond_5

    const-string v0, "players"

    goto :goto_1b

    .line 358
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "players/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/on_session"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1b
    const/4 v1, 0x1

    .line 360
    iput-boolean v1, p0, Lcom/onesignal/UserStateSynchronizer;->waitingForSessionResponse:Z

    .line 361
    invoke-virtual {p0, p2}, Lcom/onesignal/UserStateSynchronizer;->addOnSessionOrCreateExtras(Lorg/json/JSONObject;)V

    .line 362
    new-instance v1, Lcom/onesignal/UserStateSynchronizer$5;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/onesignal/UserStateSynchronizer$5;-><init>(Lcom/onesignal/UserStateSynchronizer;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {v0, p2, v1}, Lcom/onesignal/OneSignalRestClient;->postSync(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    return-void
.end method

.method private doEmailLogout(Ljava/lang/String;)V
    .registers 8

    const-string v0, "app_id"

    const-string v1, "parent_player_id"

    const-string v2, "email_auth_hash"

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "players/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/email_logout"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 253
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 255
    :try_start_21
    iget-object v4, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v4, v4, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    .line 256
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 257
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    :cond_32
    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v2, v2, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    .line 260
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 261
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    :cond_43
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_4a} :catch_4b

    goto :goto_4f

    :catch_4b
    move-exception v0

    .line 265
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 268
    :goto_4f
    new-instance v0, Lcom/onesignal/UserStateSynchronizer$3;

    invoke-direct {v0, p0}, Lcom/onesignal/UserStateSynchronizer$3;-><init>(Lcom/onesignal/UserStateSynchronizer;)V

    invoke-static {p1, v3, v0}, Lcom/onesignal/OneSignalRestClient;->postSync(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    return-void
.end method

.method private doPutSync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 6

    if-nez p1, :cond_1a

    .line 310
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getLogLevel()Lcom/onesignal/OneSignal$LOG_LEVEL;

    move-result-object p1

    const-string p2, "Error updating the user record because of the null user id"

    invoke-static {p1, p2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 311
    new-instance p1, Lcom/onesignal/OneSignal$SendTagsError;

    const/4 p2, -0x1

    const-string p3, "Unable to update tags: the current user is not registered with OneSignal"

    invoke-direct {p1, p2, p3}, Lcom/onesignal/OneSignal$SendTagsError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onesignal/UserStateSynchronizer;->sendTagsHandlersPerformOnFailure(Lcom/onesignal/OneSignal$SendTagsError;)V

    .line 312
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->externalUserIdUpdateHandlersPerformOnFailure()V

    return-void

    .line 316
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "players/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/onesignal/UserStateSynchronizer$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/onesignal/UserStateSynchronizer$4;-><init>(Lcom/onesignal/UserStateSynchronizer;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-static {p1, p2, v0}, Lcom/onesignal/OneSignalRestClient;->putSync(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    return-void
.end method

.method private externalUserIdUpdateHandlersPerformOnFailure()V
    .registers 4

    .line 569
    :goto_0
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->externalUserIdUpdateHandlers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/OneSignal$OSInternalExternalUserIdUpdateCompletionHandler;

    if-eqz v0, :cond_13

    .line 570
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getChannelString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/onesignal/OneSignal$OSInternalExternalUserIdUpdateCompletionHandler;->onComplete(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_13
    return-void
.end method

.method private externalUserIdUpdateHandlersPerformOnSuccess()V
    .registers 4

    .line 562
    :goto_0
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->externalUserIdUpdateHandlers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/OneSignal$OSInternalExternalUserIdUpdateCompletionHandler;

    if-eqz v0, :cond_13

    .line 563
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getChannelString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/onesignal/OneSignal$OSInternalExternalUserIdUpdateCompletionHandler;->onComplete(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_13
    return-void
.end method

.method private fireNetworkFailureEvents()V
    .registers 4

    .line 426
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/onesignal/UserState;->generateJsonDiff(Lcom/onesignal/UserState;Z)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 428
    invoke-virtual {p0, v0}, Lcom/onesignal/UserStateSynchronizer;->fireEventsForUpdateFailure(Lorg/json/JSONObject;)V

    .line 430
    :cond_e
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "logoutEmail"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 431
    invoke-static {}, Lcom/onesignal/OneSignal;->handleFailedEmailLogout()V

    :cond_1f
    return-void
.end method

.method private handleNetworkFailure(I)V
    .registers 3

    const/16 v0, 0x193

    if-ne p1, v0, :cond_f

    .line 414
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "403 error updating player, omitting further retries!"

    invoke-static {p1, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 415
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->fireNetworkFailureEvents()V

    return-void

    :cond_f
    const/4 p1, 0x0

    .line 419
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onesignal/UserStateSynchronizer;->getNetworkHandlerThread(Ljava/lang/Integer;)Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->doRetry()Z

    move-result p1

    if-nez p1, :cond_21

    .line 422
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->fireNetworkFailureEvents()V

    :cond_21
    return-void
.end method

.method private handlePlayerDeletedFromServer()V
    .registers 3

    .line 516
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Creating new player based on missing player_id noted above."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 517
    invoke-static {}, Lcom/onesignal/OneSignal;->handleSuccessfulEmailLogout()V

    .line 518
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->resetCurrentState()V

    const/4 v0, 0x0

    .line 519
    invoke-virtual {p0, v0}, Lcom/onesignal/UserStateSynchronizer;->updateIdDependents(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->scheduleSyncToServer()V

    return-void
.end method

.method private internalSyncUserState(Z)V
    .registers 8

    .line 219
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getId()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->syncEmailLogout()Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz v0, :cond_10

    .line 222
    invoke-direct {p0, v0}, Lcom/onesignal/UserStateSynchronizer;->doEmailLogout(Ljava/lang/String;)V

    return-void

    .line 226
    :cond_10
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    if-nez v1, :cond_17

    .line 227
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->initUserState()V

    :cond_17
    if-nez p1, :cond_21

    .line 229
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->isSessionCall()Z

    move-result p1

    if-eqz p1, :cond_21

    const/4 p1, 0x1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    .line 231
    :goto_22
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 232
    :try_start_25
    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/onesignal/UserState;->generateJsonDiff(Lcom/onesignal/UserState;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 233
    iget-object v3, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v3, v3, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v4

    iget-object v4, v4, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5, v5}, Lcom/onesignal/UserStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v2, :cond_4d

    .line 237
    iget-object p1, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    invoke-virtual {p1, v3, v5}, Lcom/onesignal/UserState;->persistStateAfterSync(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 238
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->sendTagsHandlersPerformOnSuccess()V

    .line 239
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->externalUserIdUpdateHandlersPerformOnSuccess()V

    .line 240
    monitor-exit v1

    return-void

    .line 242
    :cond_4d
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onesignal/UserState;->persistState()V

    .line 243
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_25 .. :try_end_55} :catchall_5f

    if-nez p1, :cond_5b

    .line 246
    invoke-direct {p0, v0, v2, v3}, Lcom/onesignal/UserStateSynchronizer;->doPutSync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_5e

    .line 248
    :cond_5b
    invoke-direct {p0, v0, v2, v3}, Lcom/onesignal/UserStateSynchronizer;->doCreateOrNewSession(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :goto_5e
    return-void

    :catchall_5f
    move-exception p1

    .line 243
    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p1
.end method

.method private isSessionCall()Z
    .registers 3

    .line 204
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "session"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 205
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    :cond_14
    iget-boolean v0, p0, Lcom/onesignal/UserStateSynchronizer;->waitingForSessionResponse:Z

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method private logoutEmailSyncSuccess()V
    .registers 5

    .line 292
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "logoutEmail"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    iget-object v0, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "email_auth_hash"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 294
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v2, "parent_player_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    invoke-virtual {v0}, Lcom/onesignal/UserState;->persistState()V

    .line 297
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v0, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 298
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 299
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "email"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v2, v2, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 302
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->setNewSessionForEmail()V

    .line 304
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device successfully logged out of email: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 305
    invoke-static {}, Lcom/onesignal/OneSignal;->handleSuccessfulEmailLogout()V

    return-void
.end method

.method private response400WithErrorsContaining(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const-string v0, "errors"

    const/4 v1, 0x0

    const/16 v2, 0x190

    if-ne p1, v2, :cond_24

    if-eqz p2, :cond_24

    .line 441
    :try_start_9
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1f

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_1c} :catch_20

    if-eqz p1, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1

    :catch_20
    move-exception p1

    .line 444
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_24
    return v1
.end method

.method private sendTagsHandlersPerformOnFailure(Lcom/onesignal/OneSignal$SendTagsError;)V
    .registers 3

    .line 556
    :goto_0
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->sendTagsHandlers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;

    if-eqz v0, :cond_e

    .line 557
    invoke-interface {v0, p1}, Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$SendTagsError;)V

    goto :goto_0

    :cond_e
    return-void
.end method

.method private sendTagsHandlersPerformOnSuccess()V
    .registers 3

    const/4 v0, 0x0

    .line 548
    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserStateSynchronizer$GetTagsResult;->result:Lorg/json/JSONObject;

    .line 550
    :goto_7
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->sendTagsHandlers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;

    if-eqz v1, :cond_15

    .line 551
    invoke-interface {v1, v0}, Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;->onSuccess(Lorg/json/JSONObject;)V

    goto :goto_7

    :cond_15
    return-void
.end method

.method private syncEmailLogout()Z
    .registers 4

    .line 209
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "logoutEmail"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected abstract addOnSessionOrCreateExtras(Lorg/json/JSONObject;)V
.end method

.method protected abstract fireEventsForUpdateFailure(Lorg/json/JSONObject;)V
.end method

.method protected generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_3
    invoke-static {p1, p2, p3, p4}, Lcom/onesignal/JSONUtils;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_9
    move-exception p1

    .line 152
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p1
.end method

.method getChannelString()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->channel:Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

    invoke-virtual {v0}, Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCurrentUserState()Lcom/onesignal/UserState;
    .registers 4

    .line 156
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_3
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    if-nez v1, :cond_10

    const-string v1, "CURRENT_STATE"

    const/4 v2, 0x1

    .line 158
    invoke-virtual {p0, v1, v2}, Lcom/onesignal/UserStateSynchronizer;->newUserState(Ljava/lang/String;Z)Lcom/onesignal/UserState;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    .line 159
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_14

    .line 161
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    return-object v0

    :catchall_14
    move-exception v1

    .line 159
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method protected abstract getId()Ljava/lang/String;
.end method

.method protected abstract getLogLevel()Lcom/onesignal/OneSignal$LOG_LEVEL;
.end method

.method protected getNetworkHandlerThread(Ljava/lang/Integer;)Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;
    .registers 6

    .line 452
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->networkHandlerSyncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 453
    :try_start_3
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->networkHandlerThreads:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 454
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->networkHandlerThreads:Ljava/util/HashMap;

    new-instance v2, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;-><init>(Lcom/onesignal/UserStateSynchronizer;I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :cond_19
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->networkHandlerThreads:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;

    monitor-exit v0

    return-object p1

    :catchall_23
    move-exception p1

    .line 456
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p1
.end method

.method getRegistrationId()Ljava/lang/String;
    .registers 4

    .line 57
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "identifier"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract getSubscribed()Z
.end method

.method getSyncAsNewSession()Z
    .registers 3

    .line 492
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "session"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method abstract getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;
.end method

.method protected getToSyncUserState()Lcom/onesignal/UserState;
    .registers 4

    .line 165
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_3
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    if-nez v1, :cond_10

    const-string v1, "TOSYNC_STATE"

    const/4 v2, 0x1

    .line 167
    invoke-virtual {p0, v1, v2}, Lcom/onesignal/UserStateSynchronizer;->newUserState(Ljava/lang/String;Z)Lcom/onesignal/UserState;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    .line 168
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_14

    .line 170
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    return-object v0

    :catchall_14
    move-exception v1

    .line 168
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method protected getUserStateForModification()Lcom/onesignal/UserState;
    .registers 3

    .line 463
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    if-nez v0, :cond_10

    .line 464
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getCurrentUserState()Lcom/onesignal/UserState;

    move-result-object v0

    const-string v1, "TOSYNC_STATE"

    invoke-virtual {v0, v1}, Lcom/onesignal/UserState;->deepClone(Ljava/lang/String;)Lcom/onesignal/UserState;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    .line 466
    :cond_10
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->scheduleSyncToServer()V

    .line 468
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    return-object v0
.end method

.method initUserState()V
    .registers 4

    .line 174
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_3
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    if-nez v1, :cond_10

    const-string v1, "CURRENT_STATE"

    const/4 v2, 0x1

    .line 176
    invoke-virtual {p0, v1, v2}, Lcom/onesignal/UserStateSynchronizer;->newUserState(Ljava/lang/String;Z)Lcom/onesignal/UserState;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    .line 177
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    .line 179
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    return-void

    :catchall_15
    move-exception v1

    .line 177
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method protected abstract newUserState(Ljava/lang/String;Z)Lcom/onesignal/UserState;
.end method

.method protected abstract onSuccessfulSync(Lorg/json/JSONObject;)V
.end method

.method persist()Z
    .registers 6

    .line 190
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 191
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_8
    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v3, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->isSessionCall()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/onesignal/UserState;->generateJsonDiff(Lcom/onesignal/UserState;Z)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_17

    const/4 v1, 0x1

    .line 193
    :cond_17
    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    invoke-virtual {v2}, Lcom/onesignal/UserState;->persistState()V

    .line 194
    monitor-exit v0

    return v1

    :catchall_1e
    move-exception v1

    .line 195
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_1e

    throw v1

    :cond_21
    return v1
.end method

.method readyToUpdate(Z)V
    .registers 3

    .line 541
    iget-boolean v0, p0, Lcom/onesignal/UserStateSynchronizer;->canMakeUpdates:Z

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 542
    :goto_7
    iput-boolean p1, p0, Lcom/onesignal/UserStateSynchronizer;->canMakeUpdates:Z

    if-eqz v0, :cond_10

    if-eqz p1, :cond_10

    .line 544
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->scheduleSyncToServer()V

    :cond_10
    return-void
.end method

.method resetCurrentState()V
    .registers 3

    .line 524
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    .line 525
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    invoke-virtual {v0}, Lcom/onesignal/UserState;->persistState()V

    return-void
.end method

.method protected abstract scheduleSyncToServer()V
.end method

.method sendTags(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    .registers 4

    if-eqz p2, :cond_7

    .line 497
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->sendTagsHandlers:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 498
    :cond_7
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object p2

    iget-object p2, p2, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 499
    invoke-virtual {p0, p2, p1, p2, v0}, Lcom/onesignal/UserStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    return-void
.end method

.method setNewSession()V
    .registers 5

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_1b

    .line 483
    :try_start_3
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v2, "session"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 484
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/UserState;->persistState()V

    .line 485
    monitor-exit v0

    goto :goto_1f

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    :try_start_1a
    throw v1
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1b} :catch_1b

    :catch_1b
    move-exception v0

    .line 487
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1f
    return-void
.end method

.method syncUserState(Z)V
    .registers 4

    .line 213
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->runningSyncUserState:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 214
    invoke-direct {p0, p1}, Lcom/onesignal/UserStateSynchronizer;->internalSyncUserState(Z)V

    .line 215
    iget-object p1, p0, Lcom/onesignal/UserStateSynchronizer;->runningSyncUserState:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method updateDeviceInfo(Lorg/json/JSONObject;)V
    .registers 4

    .line 474
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const/4 v1, 0x0

    .line 475
    invoke-virtual {p0, v0, p1, v0, v1}, Lcom/onesignal/UserStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    return-void
.end method

.method abstract updateIdDependents(Ljava/lang/String;)V
.end method

.method updateLocation(Lcom/onesignal/LocationController$LocationPoint;)V
    .registers 3

    .line 532
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    .line 533
    invoke-virtual {v0, p1}, Lcom/onesignal/UserState;->setLocation(Lcom/onesignal/LocationController$LocationPoint;)V

    return-void
.end method

.method abstract updateState(Lorg/json/JSONObject;)V
.end method
