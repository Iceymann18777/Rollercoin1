.class public final Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadErrorAction"
.end annotation


# instance fields
.field private final retryDelayMillis:J

.field private final type:I


# direct methods
.method private constructor <init>(IJ)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "retryDelayMillis"
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput p1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;->type:I

    .line 188
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    return-void
.end method

.method synthetic constructor <init>(IJLandroidx/media2/exoplayer/external/upstream/Loader$1;)V
    .registers 5

    .line 181
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;-><init>(IJ)V

    return-void
.end method

.method static synthetic access$300(Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;)I
    .registers 1

    .line 181
    iget p0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;->type:I

    return p0
.end method

.method static synthetic access$400(Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;)J
    .registers 3

    .line 181
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    return-wide v0
.end method


# virtual methods
.method public isRetry()Z
    .registers 3

    .line 193
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;->type:I

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_9
    return v1
.end method
