.class Lcom/onesignal/OSOutcomeEventsController;
.super Ljava/lang/Object;
.source "OSOutcomeEventsController.java"


# instance fields
.field private final osSessionManager:Lcom/onesignal/OSSessionManager;

.field private final outcomeEventsFactory:Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

.field private unattributedUniqueOutcomeEventsSentOnSession:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onesignal/OSSessionManager;Lcom/onesignal/outcomes/OSOutcomeEventsFactory;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/onesignal/OSOutcomeEventsController;->osSessionManager:Lcom/onesignal/OSSessionManager;

    .line 34
    iput-object p2, p0, Lcom/onesignal/OSOutcomeEventsController;->outcomeEventsFactory:Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

    .line 36
    invoke-direct {p0}, Lcom/onesignal/OSOutcomeEventsController;->initUniqueOutcomeEventsSentSets()V

    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/OSOutcomeEventsController;)Lcom/onesignal/outcomes/OSOutcomeEventsFactory;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/onesignal/OSOutcomeEventsController;->outcomeEventsFactory:Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

    return-object p0
.end method

.method static synthetic access$100(Lcom/onesignal/OSOutcomeEventsController;Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Lcom/onesignal/OSOutcomeEventsController;->sendSavedOutcomeEvent(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V

    return-void
.end method

.method static synthetic access$200(Lcom/onesignal/OSOutcomeEventsController;Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Lcom/onesignal/OSOutcomeEventsController;->saveUniqueOutcome(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V

    return-void
.end method

.method private getUniqueIds(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/onesignal/OSOutcomeEventsController;->outcomeEventsFactory:Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

    invoke-virtual {v0}, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->getRepository()Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;->getNotCachedUniqueOutcome(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 315
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_11

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return-object p1
.end method

.method private initUniqueOutcomeEventsSentSets()V
    .registers 2

    .line 44
    invoke-static {}, Lcom/onesignal/OSUtils;->newConcurrentSet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSOutcomeEventsController;->unattributedUniqueOutcomeEventsSentOnSession:Ljava/util/Set;

    .line 45
    iget-object v0, p0, Lcom/onesignal/OSOutcomeEventsController;->outcomeEventsFactory:Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

    invoke-virtual {v0}, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->getRepository()Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;->getUnattributedUniqueOutcomeEventsSent()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 47
    iput-object v0, p0, Lcom/onesignal/OSOutcomeEventsController;->unattributedUniqueOutcomeEventsSentOnSession:Ljava/util/Set;

    :cond_14
    return-void
.end method

.method private removeDisabledInfluences(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;"
        }
    .end annotation

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 271
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/influence/model/OSInfluence;

    .line 272
    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluence;->getInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/influence/model/OSInfluenceType;->isDisabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 273
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Outcomes disabled for channel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluence;->getInfluenceChannel()Lcom/onesignal/influence/model/OSInfluenceChannel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onesignal/influence/model/OSInfluenceChannel;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 275
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_41
    return-object v0
.end method

.method private saveAttributedUniqueOutcomeNotifications(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V
    .registers 4

    .line 294
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OSOutcomeEventsController$4;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/OSOutcomeEventsController$4;-><init>(Lcom/onesignal/OSOutcomeEventsController;Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V

    const-string p1, "OS_SAVE_UNIQUE_OUTCOME_NOTIFICATIONS"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private saveUnattributedUniqueOutcomeEvents()V
    .registers 3

    .line 307
    iget-object v0, p0, Lcom/onesignal/OSOutcomeEventsController;->outcomeEventsFactory:Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

    invoke-virtual {v0}, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->getRepository()Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/OSOutcomeEventsController;->unattributedUniqueOutcomeEventsSentOnSession:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;->saveUnattributedUniqueOutcomeEventsSent(Ljava/util/Set;)V

    return-void
.end method

.method private saveUniqueOutcome(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V
    .registers 3

    .line 283
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->isUnattributed()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 284
    invoke-direct {p0}, Lcom/onesignal/OSOutcomeEventsController;->saveUnattributedUniqueOutcomeEvents()V

    goto :goto_d

    .line 286
    :cond_a
    invoke-direct {p0, p1}, Lcom/onesignal/OSOutcomeEventsController;->saveAttributedUniqueOutcomeNotifications(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V

    :goto_d
    return-void
.end method

.method private sendAndCreateOutcomeEvent(Ljava/lang/String;FLjava/util/List;Lcom/onesignal/OneSignal$OutcomeCallback;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;",
            "Lcom/onesignal/OneSignal$OutcomeCallback;",
            ")V"
        }
    .end annotation

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v8, v0, v2

    .line 187
    new-instance v0, Lcom/onesignal/OSUtils;

    invoke-direct {v0}, Lcom/onesignal/OSUtils;-><init>()V

    invoke-virtual {v0}, Lcom/onesignal/OSUtils;->getDeviceType()I

    move-result v0

    .line 188
    sget-object v1, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    .line 194
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v3, v2

    const/4 v4, 0x0

    :goto_1b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onesignal/influence/model/OSInfluence;

    .line 195
    sget-object v6, Lcom/onesignal/OSOutcomeEventsController$5;->$SwitchMap$com$onesignal$influence$model$OSInfluenceType:[I

    invoke-virtual {v5}, Lcom/onesignal/influence/model/OSInfluence;->getInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/onesignal/influence/model/OSInfluenceType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_69

    const/4 v10, 0x2

    if-eq v6, v10, :cond_5d

    const/4 v10, 0x3

    if-eq v6, v10, :cond_5b

    const/4 v7, 0x4

    if-eq v6, v7, :cond_40

    goto :goto_1b

    .line 206
    :cond_40
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Outcomes disabled for channel: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/onesignal/influence/model/OSInfluence;->getInfluenceChannel()Lcom/onesignal/influence/model/OSInfluenceChannel;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    :cond_5b
    const/4 v4, 0x1

    goto :goto_1b

    :cond_5d
    if-nez v3, :cond_64

    .line 200
    new-instance v3, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    invoke-direct {v3}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;-><init>()V

    :cond_64
    invoke-direct {p0, v5, v3}, Lcom/onesignal/OSOutcomeEventsController;->setSourceChannelIds(Lcom/onesignal/influence/model/OSInfluence;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v3

    goto :goto_1b

    :cond_69
    if-nez v2, :cond_70

    .line 197
    new-instance v2, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    invoke-direct {v2}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;-><init>()V

    :cond_70
    invoke-direct {p0, v5, v2}, Lcom/onesignal/OSOutcomeEventsController;->setSourceChannelIds(Lcom/onesignal/influence/model/OSInfluence;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v2

    goto :goto_1b

    :cond_75
    if-nez v2, :cond_83

    if-nez v3, :cond_83

    if-nez v4, :cond_83

    .line 213
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p2, "Outcomes disabled for all channels"

    invoke-static {p1, p2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 217
    :cond_83
    new-instance p3, Lcom/onesignal/outcomes/model/OSOutcomeSource;

    invoke-direct {p3, v2, v3}, Lcom/onesignal/outcomes/model/OSOutcomeSource;-><init>(Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)V

    .line 219
    new-instance v2, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;

    invoke-direct {v2, p1, p3, p2}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;-><init>(Ljava/lang/String;Lcom/onesignal/outcomes/model/OSOutcomeSource;F)V

    .line 221
    new-instance p2, Lcom/onesignal/OSOutcomeEventsController$3;

    move-object v4, p2

    move-object v5, p0

    move-object v6, v2

    move-object v7, p4

    move-object v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/onesignal/OSOutcomeEventsController$3;-><init>(Lcom/onesignal/OSOutcomeEventsController;Lcom/onesignal/outcomes/model/OSOutcomeEventParams;Lcom/onesignal/OneSignal$OutcomeCallback;JLjava/lang/String;)V

    .line 253
    iget-object p1, p0, Lcom/onesignal/OSOutcomeEventsController;->outcomeEventsFactory:Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

    invoke-virtual {p1}, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->getRepository()Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;

    move-result-object p1

    invoke-interface {p1, v1, v0, v2, p2}, Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;->requestMeasureOutcomeEvent(Ljava/lang/String;ILcom/onesignal/outcomes/model/OSOutcomeEventParams;Lcom/onesignal/OneSignalApiResponseHandler;)V

    return-void
.end method

.method private sendSavedOutcomeEvent(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V
    .registers 6

    .line 78
    new-instance v0, Lcom/onesignal/OSUtils;

    invoke-direct {v0}, Lcom/onesignal/OSUtils;-><init>()V

    invoke-virtual {v0}, Lcom/onesignal/OSUtils;->getDeviceType()I

    move-result v0

    .line 79
    sget-object v1, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    .line 81
    new-instance v2, Lcom/onesignal/OSOutcomeEventsController$2;

    invoke-direct {v2, p0, p1}, Lcom/onesignal/OSOutcomeEventsController$2;-><init>(Lcom/onesignal/OSOutcomeEventsController;Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V

    .line 92
    iget-object v3, p0, Lcom/onesignal/OSOutcomeEventsController;->outcomeEventsFactory:Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

    invoke-virtual {v3}, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->getRepository()Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;

    move-result-object v3

    invoke-interface {v3, v1, v0, p1, v2}, Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;->requestMeasureOutcomeEvent(Ljava/lang/String;ILcom/onesignal/outcomes/model/OSOutcomeEventParams;Lcom/onesignal/OneSignalApiResponseHandler;)V

    return-void
.end method

.method private sendUniqueOutcomeEvent(Ljava/lang/String;Ljava/util/List;Lcom/onesignal/OneSignal$OutcomeCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;",
            "Lcom/onesignal/OneSignal$OutcomeCallback;",
            ")V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p2}, Lcom/onesignal/OSOutcomeEventsController;->removeDisabledInfluences(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 130
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 131
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p2, "Unique Outcome disabled for current session"

    invoke-static {p1, p2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    :cond_12
    const/4 v0, 0x0

    .line 136
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/influence/model/OSInfluence;

    .line 137
    invoke-virtual {v2}, Lcom/onesignal/influence/model/OSInfluence;->getInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/influence/model/OSInfluenceType;->isAttributed()Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v0, 0x1

    :cond_2e
    const/4 v1, 0x0

    const-string v2, "\nOutcome name: "

    const/4 v3, 0x0

    if-eqz v0, :cond_64

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/onesignal/OSOutcomeEventsController;->getUniqueIds(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_60

    .line 149
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Measure endpoint will not send because unique outcome already sent for: \nSessionInfluences: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-static {v0, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    if-eqz p3, :cond_5f

    .line 156
    invoke-interface {p3, v1}, Lcom/onesignal/OneSignal$OutcomeCallback;->onSuccess(Lcom/onesignal/OutcomeEvent;)V

    :cond_5f
    return-void

    .line 161
    :cond_60
    invoke-direct {p0, p1, v3, v0, p3}, Lcom/onesignal/OSOutcomeEventsController;->sendAndCreateOutcomeEvent(Ljava/lang/String;FLjava/util/List;Lcom/onesignal/OneSignal$OutcomeCallback;)V

    goto :goto_98

    .line 164
    :cond_64
    iget-object v0, p0, Lcom/onesignal/OSOutcomeEventsController;->unattributedUniqueOutcomeEventsSentOnSession:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 165
    sget-object p2, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Measure endpoint will not send because unique outcome already sent for: \nSession: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/onesignal/influence/model/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    if-eqz p3, :cond_8f

    .line 172
    invoke-interface {p3, v1}, Lcom/onesignal/OneSignal$OutcomeCallback;->onSuccess(Lcom/onesignal/OutcomeEvent;)V

    :cond_8f
    return-void

    .line 177
    :cond_90
    iget-object v0, p0, Lcom/onesignal/OSOutcomeEventsController;->unattributedUniqueOutcomeEventsSentOnSession:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-direct {p0, p1, v3, p2, p3}, Lcom/onesignal/OSOutcomeEventsController;->sendAndCreateOutcomeEvent(Ljava/lang/String;FLjava/util/List;Lcom/onesignal/OneSignal$OutcomeCallback;)V

    :goto_98
    return-void
.end method

.method private setSourceChannelIds(Lcom/onesignal/influence/model/OSInfluence;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    .registers 5

    .line 257
    sget-object v0, Lcom/onesignal/OSOutcomeEventsController$5;->$SwitchMap$com$onesignal$influence$model$OSInfluenceChannel:[I

    invoke-virtual {p1}, Lcom/onesignal/influence/model/OSInfluence;->getInfluenceChannel()Lcom/onesignal/influence/model/OSInfluenceChannel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluenceChannel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    goto :goto_22

    .line 262
    :cond_13
    invoke-virtual {p1}, Lcom/onesignal/influence/model/OSInfluence;->getIds()Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->setNotificationIds(Lorg/json/JSONArray;)V

    goto :goto_22

    .line 259
    :cond_1b
    invoke-virtual {p1}, Lcom/onesignal/influence/model/OSInfluence;->getIds()Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->setInAppMessagesIds(Lorg/json/JSONArray;)V

    :goto_22
    return-object p2
.end method


# virtual methods
.method cleanOutcomes()V
    .registers 3

    .line 54
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal cleanOutcomes for session"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/onesignal/OSUtils;->newConcurrentSet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSOutcomeEventsController;->unattributedUniqueOutcomeEventsSentOnSession:Ljava/util/Set;

    .line 56
    invoke-direct {p0}, Lcom/onesignal/OSOutcomeEventsController;->saveUnattributedUniqueOutcomeEvents()V

    return-void
.end method

.method sendClickActionOutcomes(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessageOutcome;",
            ">;)V"
        }
    .end annotation

    .line 96
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/OSInAppMessageOutcome;

    .line 97
    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessageOutcome;->getName()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessageOutcome;->isUnique()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1f

    .line 100
    invoke-virtual {p0, v1, v3}, Lcom/onesignal/OSOutcomeEventsController;->sendUniqueOutcomeEvent(Ljava/lang/String;Lcom/onesignal/OneSignal$OutcomeCallback;)V

    goto :goto_4

    .line 101
    :cond_1f
    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessageOutcome;->getWeight()F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_30

    .line 102
    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessageOutcome;->getWeight()F

    move-result v0

    invoke-virtual {p0, v1, v0, v3}, Lcom/onesignal/OSOutcomeEventsController;->sendOutcomeEventWithValue(Ljava/lang/String;FLcom/onesignal/OneSignal$OutcomeCallback;)V

    goto :goto_4

    .line 104
    :cond_30
    invoke-virtual {p0, v1, v3}, Lcom/onesignal/OSOutcomeEventsController;->sendOutcomeEvent(Ljava/lang/String;Lcom/onesignal/OneSignal$OutcomeCallback;)V

    goto :goto_4

    :cond_34
    return-void
.end method

.method sendOutcomeEvent(Ljava/lang/String;Lcom/onesignal/OneSignal$OutcomeCallback;)V
    .registers 5

    .line 115
    iget-object v0, p0, Lcom/onesignal/OSOutcomeEventsController;->osSessionManager:Lcom/onesignal/OSSessionManager;

    invoke-virtual {v0}, Lcom/onesignal/OSSessionManager;->getInfluences()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/onesignal/OSOutcomeEventsController;->sendAndCreateOutcomeEvent(Ljava/lang/String;FLjava/util/List;Lcom/onesignal/OneSignal$OutcomeCallback;)V

    return-void
.end method

.method sendOutcomeEventWithValue(Ljava/lang/String;FLcom/onesignal/OneSignal$OutcomeCallback;)V
    .registers 5

    .line 120
    iget-object v0, p0, Lcom/onesignal/OSOutcomeEventsController;->osSessionManager:Lcom/onesignal/OSSessionManager;

    invoke-virtual {v0}, Lcom/onesignal/OSSessionManager;->getInfluences()Ljava/util/List;

    move-result-object v0

    .line 121
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/onesignal/OSOutcomeEventsController;->sendAndCreateOutcomeEvent(Ljava/lang/String;FLjava/util/List;Lcom/onesignal/OneSignal$OutcomeCallback;)V

    return-void
.end method

.method sendSavedOutcomes()V
    .registers 4

    .line 64
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OSOutcomeEventsController$1;

    invoke-direct {v1, p0}, Lcom/onesignal/OSOutcomeEventsController$1;-><init>(Lcom/onesignal/OSOutcomeEventsController;)V

    const-string v2, "OS_SEND_SAVED_OUTCOMES"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method sendUniqueOutcomeEvent(Ljava/lang/String;Lcom/onesignal/OneSignal$OutcomeCallback;)V
    .registers 4

    .line 110
    iget-object v0, p0, Lcom/onesignal/OSOutcomeEventsController;->osSessionManager:Lcom/onesignal/OSSessionManager;

    invoke-virtual {v0}, Lcom/onesignal/OSSessionManager;->getInfluences()Ljava/util/List;

    move-result-object v0

    .line 111
    invoke-direct {p0, p1, v0, p2}, Lcom/onesignal/OSOutcomeEventsController;->sendUniqueOutcomeEvent(Ljava/lang/String;Ljava/util/List;Lcom/onesignal/OneSignal$OutcomeCallback;)V

    return-void
.end method
