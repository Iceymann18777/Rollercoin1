.class public Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;
.implements Landroidx/media2/exoplayer/external/drm/DrmSessionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmHandler;,
        Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MissingSchemeDataException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager<",
        "TT;>;",
        "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final callback:Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;

.field private final eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/util/EventDispatcher<",
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final initialDrmRequestRetryCount:I

.field private final mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/ExoMediaDrm<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile mediaDrmHandler:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<",
            "TT;>.MediaDrmHandler;"
        }
    .end annotation
.end field

.field private mode:I

.field private final multiSession:Z

.field private offlineLicenseKeySetId:[B

.field private final optionalKeyRequestParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private playbackLooper:Landroid/os/Looper;

.field private final provisioningSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final sessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final uuid:Ljava/util/UUID;


# direct methods
.method static synthetic access$200(Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;)Ljava/util/List;
    .registers 1

    .line 53
    iget-object p0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    return-object p0
.end method

.method private static getSchemeDatas(Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "drmInitData",
            "uuid",
            "allowMissingData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Ljava/util/UUID;",
            "Z)",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDataCount:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 513
    :goto_9
    iget v3, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDataCount:I

    if-ge v2, v3, :cond_39

    .line 514
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->get(I)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    move-result-object v3

    .line 516
    invoke-virtual {v3, p1}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v4

    if-nez v4, :cond_2a

    sget-object v4, Landroidx/media2/exoplayer/external/C;->CLEARKEY_UUID:Ljava/util/UUID;

    .line 517
    invoke-virtual {v4, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    sget-object v4, Landroidx/media2/exoplayer/external/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v4

    if-eqz v4, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v4, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v4, 0x1

    :goto_2b
    if-eqz v4, :cond_36

    .line 518
    iget-object v4, v3, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->data:[B

    if-nez v4, :cond_33

    if-eqz p2, :cond_36

    .line 519
    :cond_33
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_39
    return-object v0
.end method

.method static final synthetic lambda$acquireSession$0$DefaultDrmSessionManager(Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MissingSchemeDataException;Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionEventListener;)V
    .registers 2

    .line 406
    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionEventListener;->onDrmSessionManagerError(Ljava/lang/Exception;)V

    return-void
.end method

.method private onSessionReleased(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drmSession"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<",
            "TT;>;)V"
        }
    .end annotation

    .line 490
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 491
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_22

    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_22

    .line 494
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->provision()V

    .line 496
    :cond_22
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public acquireSession(Landroid/os/Looper;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/drm/DrmSession;
    .registers 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "playbackLooper",
            "drmInitData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ")",
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "TT;>;"
        }
    .end annotation

    move-object v13, p0

    move-object/from16 v10, p1

    .line 393
    iget-object v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    if-ne v0, v10, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 394
    iget-object v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 395
    iput-object v10, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    .line 396
    iget-object v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->mediaDrmHandler:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmHandler;

    if-nez v0, :cond_26

    .line 397
    new-instance v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmHandler;

    invoke-direct {v0, p0, v10}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmHandler;-><init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V

    iput-object v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->mediaDrmHandler:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmHandler;

    .line 402
    :cond_26
    iget-object v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    const/4 v2, 0x0

    if-nez v0, :cond_57

    .line 403
    iget-object v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    move-object/from16 v3, p2

    invoke-static {v3, v0, v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->getSchemeDatas(Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object v0

    .line 404
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 405
    new-instance v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    iget-object v1, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MissingSchemeDataException;-><init>(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$1;)V

    .line 406
    iget-object v1, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;

    new-instance v2, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$$Lambda$0;

    invoke-direct {v2, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$$Lambda$0;-><init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MissingSchemeDataException;)V

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/EventDispatcher;->dispatch(Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;)V

    .line 407
    new-instance v1, Landroidx/media2/exoplayer/external/drm/ErrorStateDrmSession;

    new-instance v2, Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    invoke-direct {v2, v0}, Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/drm/ErrorStateDrmSession;-><init>(Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;)V

    return-object v1

    :cond_55
    move-object v5, v0

    goto :goto_58

    :cond_57
    move-object v5, v2

    .line 412
    :goto_58
    iget-boolean v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->multiSession:Z

    if-nez v0, :cond_6f

    .line 413
    iget-object v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_65

    goto :goto_8a

    :cond_65
    iget-object v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    move-object v2, v0

    goto :goto_8a

    .line 417
    :cond_6f
    iget-object v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_75
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    .line 418
    iget-object v3, v1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    invoke-static {v3, v5}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    move-object v2, v1

    :cond_8a
    :goto_8a
    if-nez v2, :cond_b0

    .line 427
    new-instance v14, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    iget-object v1, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    iget-object v2, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    new-instance v4, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$$Lambda$1;

    invoke-direct {v4, p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$$Lambda$1;-><init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;)V

    iget v6, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->mode:I

    iget-object v7, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    iget-object v8, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->optionalKeyRequestParameters:Ljava/util/HashMap;

    iget-object v9, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->callback:Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;

    iget-object v11, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;

    iget v12, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->initialDrmRequestRetryCount:I

    move-object v0, v14

    move-object v3, p0

    move-object/from16 v10, p1

    invoke-direct/range {v0 .. v12}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;-><init>(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ReleaseCallback;Ljava/util/List;I[BLjava/util/HashMap;Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;Landroid/os/Looper;Landroidx/media2/exoplayer/external/util/EventDispatcher;I)V

    .line 441
    iget-object v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v14

    .line 443
    :cond_b0
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->acquire()V

    return-object v2
.end method

.method public final addListener(Landroid/os/Handler;Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionEventListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handler",
            "eventListener"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/util/EventDispatcher;->addListener(Landroid/os/Handler;Ljava/lang/Object;)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$0$DefaultDrmSessionManager(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->onSessionReleased(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;)V

    return-void
.end method

.method public canAcquireSession(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drmInitData"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 365
    :cond_6
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-static {p1, v0, v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->getSchemeDatas(Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object v0

    .line 366
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4b

    .line 367
    iget v0, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDataCount:I

    if-ne v0, v1, :cond_4a

    invoke-virtual {p1, v2}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->get(I)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    move-result-object v0

    sget-object v3, Landroidx/media2/exoplayer/external/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 369
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x48

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "DrmInitData only contains common PSSH SchemeData. Assuming support for: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DefaultDrmSessionMgr"

    invoke-static {v3, v0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    :cond_4a
    return v2

    .line 376
    :cond_4b
    :goto_4b
    iget-object p1, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz p1, :cond_7a

    const-string v0, "cenc"

    .line 377
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    goto :goto_7a

    :cond_58
    const-string v0, "cbc1"

    .line 380
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    const-string v0, "cbcs"

    .line 381
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    const-string v0, "cens"

    .line 382
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_71

    goto :goto_72

    :cond_71
    return v1

    .line 385
    :cond_72
    :goto_72
    sget p1, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v0, 0x19

    if-lt p1, v0, :cond_79

    goto :goto_7a

    :cond_79
    const/4 v1, 0x0

    :cond_7a
    :goto_7a
    return v1
.end method

.method public onProvisionCompleted()V
    .registers 3

    .line 473
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    .line 474
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onProvisionCompleted()V

    goto :goto_6

    .line 476
    :cond_16
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onProvisionError(Ljava/lang/Exception;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 481
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    .line 482
    invoke-virtual {v1, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onProvisionError(Ljava/lang/Exception;)V

    goto :goto_6

    .line 484
    :cond_16
    iget-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public provisionRequired(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<",
            "TT;>;)V"
        }
    .end annotation

    .line 460
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 464
    :cond_9
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 467
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->provision()V

    :cond_1a
    return-void
.end method

.method public releaseSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "TT;>;)V"
        }
    .end annotation

    .line 449
    instance-of v0, p1, Landroidx/media2/exoplayer/external/drm/ErrorStateDrmSession;

    if-eqz v0, :cond_5

    return-void

    .line 453
    :cond_5
    check-cast p1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->release()V

    return-void
.end method
