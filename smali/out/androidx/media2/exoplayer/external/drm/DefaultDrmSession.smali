.class Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/drm/DrmSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;,
        Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler;,
        Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ReleaseCallback;,
        Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/drm/DrmSession<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final callback:Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;

.field private currentKeyRequest:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyRequest;

.field private currentProvisionRequest:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$ProvisionRequest;

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

.field private lastException:Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

.field private mediaCrypto:Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/ExoMediaDrm<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mode:I

.field private offlineLicenseKeySetId:[B

.field private openCount:I

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

.field private postRequestHandler:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<",
            "TT;>.PostRequestHandler;"
        }
    .end annotation
.end field

.field final postResponseHandler:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<",
            "TT;>.PostResponseHandler;"
        }
    .end annotation
.end field

.field private final provisioningManager:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final releaseCallback:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ReleaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ReleaseCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private requestHandlerThread:Landroid/os/HandlerThread;

.field public final schemeDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field

.field private sessionId:[B

.field private state:I

.field final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ReleaseCallback;Ljava/util/List;I[BLjava/util/HashMap;Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;Landroid/os/Looper;Landroidx/media2/exoplayer/external/util/EventDispatcher;I)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uuid",
            "mediaDrm",
            "provisioningManager",
            "releaseCallback",
            "schemeDatas",
            "mode",
            "offlineLicenseKeySetId",
            "optionalKeyRequestParameters",
            "callback",
            "playbackLooper",
            "eventDispatcher",
            "initialDrmRequestRetryCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroidx/media2/exoplayer/external/drm/ExoMediaDrm<",
            "TT;>;",
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager<",
            "TT;>;",
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ReleaseCallback<",
            "TT;>;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;",
            ">;I[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;",
            "Landroid/os/Looper;",
            "Landroidx/media2/exoplayer/external/util/EventDispatcher<",
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionEventListener;",
            ">;I)V"
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p6, v0, :cond_9

    const/4 v0, 0x3

    if-ne p6, v0, :cond_c

    .line 159
    :cond_9
    invoke-static {p7}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_c
    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    .line 162
    iput-object p3, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->provisioningManager:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;

    .line 163
    iput-object p4, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->releaseCallback:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ReleaseCallback;

    .line 164
    iput-object p2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    .line 165
    iput p6, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mode:I

    if-eqz p7, :cond_1e

    .line 167
    iput-object p7, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    const/4 p1, 0x0

    .line 168
    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    goto :goto_2a

    .line 170
    :cond_1e
    invoke-static {p5}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    .line 172
    :goto_2a
    iput-object p8, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->optionalKeyRequestParameters:Ljava/util/HashMap;

    .line 173
    iput-object p9, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->callback:Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;

    .line 174
    iput p12, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->initialDrmRequestRetryCount:I

    .line 175
    iput-object p11, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;

    const/4 p1, 0x2

    .line 176
    iput p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->state:I

    .line 177
    new-instance p1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler;

    invoke-direct {p1, p0, p10}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler;-><init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->postResponseHandler:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler;

    return-void
.end method

.method static synthetic access$000(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 55
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onProvisionResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 55
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onKeyResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;)I
    .registers 1

    .line 55
    iget p0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->initialDrmRequestRetryCount:I

    return p0
.end method

.method private doLicense(Z)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowRetry"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sessionId"
        }
    .end annotation

    .line 340
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mode:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_37

    if-eq v0, v1, :cond_37

    if-eq v0, v2, :cond_21

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    goto/16 :goto_90

    .line 374
    :cond_f
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->restoreKeys()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 378
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-direct {p0, v0, v1, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    goto/16 :goto_90

    .line 364
    :cond_21
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-nez v0, :cond_2b

    .line 365
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->sessionId:[B

    invoke-direct {p0, v0, v2, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    goto :goto_90

    .line 368
    :cond_2b
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->restoreKeys()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 369
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->sessionId:[B

    invoke-direct {p0, v0, v2, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    goto :goto_90

    .line 343
    :cond_37
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-nez v0, :cond_41

    .line 344
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->sessionId:[B

    invoke-direct {p0, v0, v1, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    goto :goto_90

    .line 345
    :cond_41
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4c

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->restoreKeys()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 346
    :cond_4c
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->getLicenseDurationRemainingSec()J

    move-result-wide v3

    .line 347
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mode:I

    if-nez v0, :cond_78

    const-wide/16 v5, 0x3c

    cmp-long v0, v3, v5

    if-gtz v0, :cond_78

    const/16 v0, 0x58

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Offline license has expired or will expire soon. Remaining seconds: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultDrmSession"

    invoke-static {v1, v0}, Landroidx/media2/exoplayer/external/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->sessionId:[B

    invoke-direct {p0, v0, v2, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    goto :goto_90

    :cond_78
    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-gtz p1, :cond_87

    .line 356
    new-instance p1, Landroidx/media2/exoplayer/external/drm/KeysExpiredException;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/drm/KeysExpiredException;-><init>()V

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    goto :goto_90

    .line 358
    :cond_87
    iput v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->state:I

    .line 359
    iget-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;

    sget-object v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$$Lambda$2;->$instance:Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/EventDispatcher;->dispatch(Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;)V

    :cond_90
    :goto_90
    return-void
.end method

.method private getLicenseDurationRemainingSec()J
    .registers 6

    .line 399
    sget-object v0, Landroidx/media2/exoplayer/external/C;->WIDEVINE_UUID:Ljava/util/UUID;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 403
    :cond_10
    invoke-static {p0}, Landroidx/media2/exoplayer/external/drm/WidevineUtil;->getLicenseDurationRemainingSec(Landroidx/media2/exoplayer/external/drm/DrmSession;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 404
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private isOpen()Z
    .registers 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "sessionId"
        }
        result = true
    .end annotation

    .line 478
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method static final synthetic lambda$onError$0$DefaultDrmSession(Ljava/lang/Exception;Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionEventListener;)V
    .registers 2

    .line 469
    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionEventListener;->onDrmSessionManagerError(Ljava/lang/Exception;)V

    return-void
.end method

.method private onError(Ljava/lang/Exception;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "e"
        }
    .end annotation

    .line 468
    new-instance v0, Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->lastException:Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    .line 469
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;

    new-instance v1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$$Lambda$5;

    invoke-direct {v1, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$$Lambda$5;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/EventDispatcher;->dispatch(Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;)V

    .line 470
    iget p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->state:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_19

    const/4 p1, 0x1

    .line 471
    iput p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->state:I

    :cond_19
    return-void
.end method

.method private onKeyResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "request",
            "response"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyRequest;

    if-ne p1, v0, :cond_5f

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->isOpen()Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_5f

    :cond_b
    const/4 p1, 0x0

    .line 423
    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyRequest;

    .line 425
    instance-of p1, p2, Ljava/lang/Exception;

    if-eqz p1, :cond_18

    .line 426
    check-cast p2, Ljava/lang/Exception;

    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;)V

    return-void

    .line 431
    :cond_18
    :try_start_18
    check-cast p2, [B

    .line 432
    iget p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mode:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_34

    .line 433
    iget-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {p1, v0, p2}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    .line 434
    iget-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;

    sget-object p2, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$$Lambda$3;->$instance:Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;

    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/util/EventDispatcher;->dispatch(Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;)V

    goto :goto_5f

    .line 436
    :cond_34
    iget-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {p1, v0, p2}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    move-result-object p1

    .line 437
    iget p2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mode:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_49

    iget p2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mode:I

    if-nez p2, :cond_50

    iget-object p2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-eqz p2, :cond_50

    :cond_49
    if-eqz p1, :cond_50

    array-length p2, p1

    if-eqz p2, :cond_50

    .line 442
    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    :cond_50
    const/4 p1, 0x4

    .line 444
    iput p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->state:I

    .line 445
    iget-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;

    sget-object p2, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$$Lambda$4;->$instance:Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;

    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/util/EventDispatcher;->dispatch(Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_5a} :catch_5b

    goto :goto_5f

    :catch_5b
    move-exception p1

    .line 448
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method private onKeysError(Ljava/lang/Exception;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 460
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_a

    .line 461
    iget-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->provisioningManager:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;)V

    goto :goto_d

    .line 463
    :cond_a
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    :goto_d
    return-void
.end method

.method private onKeysRequired()V
    .registers 3

    .line 453
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mode:I

    if-nez v0, :cond_12

    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    .line 454
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 455
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->doLicense(Z)V

    :cond_12
    return-void
.end method

.method private onProvisionResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "request",
            "response"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$ProvisionRequest;

    if-ne p1, v0, :cond_32

    iget p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->state:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->isOpen()Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_32

    :cond_10
    const/4 p1, 0x0

    .line 321
    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$ProvisionRequest;

    .line 323
    instance-of p1, p2, Ljava/lang/Exception;

    if-eqz p1, :cond_1f

    .line 324
    iget-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->provisioningManager:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;

    check-cast p2, Ljava/lang/Exception;

    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;->onProvisionError(Ljava/lang/Exception;)V

    return-void

    .line 329
    :cond_1f
    :try_start_1f
    iget-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    check-cast p2, [B

    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;->provideProvisionResponse([B)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_26} :catch_2c

    .line 335
    iget-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->provisioningManager:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;->onProvisionCompleted()V

    return-void

    :catch_2c
    move-exception p1

    .line 331
    iget-object p2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->provisioningManager:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {p2, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;->onProvisionError(Ljava/lang/Exception;)V

    :cond_32
    :goto_32
    return-void
.end method

.method private openInternal(Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowProvisioning"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "sessionId"
        }
        result = true
    .end annotation

    .line 292
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 298
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;->openSession()[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->sessionId:[B

    .line 299
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;

    sget-object v2, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$$Lambda$1;->$instance:Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/EventDispatcher;->dispatch(Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;)V

    .line 300
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {v0, v2}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;->createMediaCrypto([B)Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mediaCrypto:Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;

    const/4 v0, 0x3

    .line 301
    iput v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->state:I
    :try_end_24
    .catch Landroid/media/NotProvisionedException; {:try_start_8 .. :try_end_24} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_24} :catch_25

    return v1

    :catch_25
    move-exception p1

    .line 310
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    goto :goto_36

    :catch_2a
    move-exception v0

    if-eqz p1, :cond_33

    .line 305
    iget-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->provisioningManager:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;)V

    goto :goto_36

    .line 307
    :cond_33
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    :goto_36
    const/4 p1, 0x0

    return p1
.end method

.method private postKeyRequest([BIZ)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scope",
            "type",
            "allowRetry"
        }
    .end annotation

    .line 409
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->optionalKeyRequestParameters:Ljava/util/HashMap;

    .line 410
    invoke-interface {v0, p1, v1, p2, v2}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;->getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyRequest;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyRequest;

    .line 411
    iget-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->postRequestHandler:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;

    const/4 p2, 0x1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyRequest;

    .line 412
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0, p3}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;->post(ILjava/lang/Object;Z)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception p1

    .line 414
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;)V

    :goto_23
    return-void
.end method

.method private restoreKeys()Z
    .registers 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sessionId",
            "offlineLicenseKeySetId"
        }
    .end annotation

    .line 389
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->sessionId:[B

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-interface {v0, v1, v2}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;->restoreKeys([B[B)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    return v0

    :catch_b
    move-exception v0

    const-string v1, "DefaultDrmSession"

    const-string v2, "Error trying to restore Widevine keys."

    .line 392
    invoke-static {v1, v2, v0}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 393
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public acquire()V
    .registers 4

    .line 183
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->openCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->openCount:I

    if-ne v0, v1, :cond_2a

    .line 184
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "DrmRequestHandler"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 185
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 186
    new-instance v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;-><init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->postRequestHandler:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;

    .line 187
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->openInternal(Z)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 188
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->doLicense(Z)V

    :cond_2a
    return-void
.end method

.method public final getError()Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;
    .registers 3

    .line 261
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->lastException:Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public final getMediaCrypto()Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mediaCrypto:Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;

    return-object v0
.end method

.method public final getState()I
    .registers 2

    .line 256
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->state:I

    return v0
.end method

.method public hasSessionId([B)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionId"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public onMediaDrmEvent(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "what"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    goto :goto_7

    .line 223
    :cond_4
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onKeysRequired()V

    :goto_7
    return-void
.end method

.method public onProvisionCompleted()V
    .registers 2

    const/4 v0, 0x0

    .line 242
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->openInternal(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    .line 243
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->doLicense(Z)V

    :cond_b
    return-void
.end method

.method public onProvisionError(Ljava/lang/Exception;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 248
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public provision()V
    .registers 5

    .line 233
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;->getProvisionRequest()Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$ProvisionRequest;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$ProvisionRequest;

    .line 234
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->postRequestHandler:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$ProvisionRequest;

    .line 237
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 235
    invoke-virtual {v0, v2, v1, v3}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;->post(ILjava/lang/Object;Z)V

    return-void
.end method

.method public queryKeyStatus()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->sessionId:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;->queryKeyStatus([B)Ljava/util/Map;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public release()V
    .registers 4

    .line 195
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->openCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->openCount:I

    if-nez v0, :cond_4a

    const/4 v0, 0x0

    .line 197
    iput v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->state:I

    .line 198
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->postResponseHandler:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->postRequestHandler:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 200
    iput-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->postRequestHandler:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;

    .line 201
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 202
    iput-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 203
    iput-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mediaCrypto:Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;

    .line 204
    iput-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->lastException:Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    .line 205
    iput-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyRequest;

    .line 206
    iput-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$ProvisionRequest;

    .line 207
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->sessionId:[B

    if-eqz v0, :cond_45

    .line 208
    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    invoke-interface {v2, v0}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;->closeSession([B)V

    .line 209
    iput-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->sessionId:[B

    .line 210
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;

    sget-object v1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/EventDispatcher;->dispatch(Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;)V

    .line 212
    :cond_45
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->releaseCallback:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ReleaseCallback;

    invoke-interface {v0, p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ReleaseCallback;->onSessionReleased(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;)V

    :cond_4a
    return-void
.end method
