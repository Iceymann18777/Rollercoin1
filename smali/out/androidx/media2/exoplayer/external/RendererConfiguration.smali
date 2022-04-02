.class public final Landroidx/media2/exoplayer/external/RendererConfiguration;
.super Ljava/lang/Object;
.source "RendererConfiguration.java"


# static fields
.field public static final DEFAULT:Landroidx/media2/exoplayer/external/RendererConfiguration;


# instance fields
.field public final tunnelingAudioSessionId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Landroidx/media2/exoplayer/external/RendererConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/RendererConfiguration;-><init>(I)V

    sput-object v0, Landroidx/media2/exoplayer/external/RendererConfiguration;->DEFAULT:Landroidx/media2/exoplayer/external/RendererConfiguration;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tunnelingAudioSessionId"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Landroidx/media2/exoplayer/external/RendererConfiguration;->tunnelingAudioSessionId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1d

    .line 59
    :cond_12
    check-cast p1, Landroidx/media2/exoplayer/external/RendererConfiguration;

    .line 60
    iget v2, p0, Landroidx/media2/exoplayer/external/RendererConfiguration;->tunnelingAudioSessionId:I

    iget p1, p1, Landroidx/media2/exoplayer/external/RendererConfiguration;->tunnelingAudioSessionId:I

    if-ne v2, p1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0

    :cond_1d
    :goto_1d
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 65
    iget v0, p0, Landroidx/media2/exoplayer/external/RendererConfiguration;->tunnelingAudioSessionId:I

    return v0
.end method
