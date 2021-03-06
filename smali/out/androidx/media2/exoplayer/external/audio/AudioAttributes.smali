.class public final Landroidx/media2/exoplayer/external/audio/AudioAttributes;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Landroidx/media2/exoplayer/external/audio/AudioAttributes;


# instance fields
.field private audioAttributesV21:Landroid/media/AudioAttributes;

.field public final contentType:I

.field public final flags:I

.field public final usage:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;->build()Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->DEFAULT:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    return-void
.end method

.method private constructor <init>(III)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "contentType",
            "flags",
            "usage"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->contentType:I

    .line 106
    iput p2, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->flags:I

    .line 107
    iput p3, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->usage:I

    return-void
.end method

.method synthetic constructor <init>(IIILandroidx/media2/exoplayer/external/audio/AudioAttributes$1;)V
    .registers 5

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/AudioAttributes;-><init>(III)V

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

    if-eqz p1, :cond_29

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_29

    .line 130
    :cond_12
    check-cast p1, Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    .line 131
    iget v2, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->contentType:I

    iget v3, p1, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->contentType:I

    if-ne v2, v3, :cond_27

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->flags:I

    iget v3, p1, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->flags:I

    if-ne v2, v3, :cond_27

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->usage:I

    iget p1, p1, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->usage:I

    if-ne v2, p1, :cond_27

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return v0

    :cond_29
    :goto_29
    return v1
.end method

.method public getAudioAttributesV21()Landroid/media/AudioAttributes;
    .registers 3

    .line 112
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->audioAttributesV21:Landroid/media/AudioAttributes;

    if-nez v0, :cond_21

    .line 113
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->contentType:I

    .line 114
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->flags:I

    .line 115
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->usage:I

    .line 116
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->audioAttributesV21:Landroid/media/AudioAttributes;

    .line 119
    :cond_21
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->audioAttributesV21:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 138
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->contentType:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 139
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->flags:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 140
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->usage:I

    add-int/2addr v1, v0

    return v1
.end method
