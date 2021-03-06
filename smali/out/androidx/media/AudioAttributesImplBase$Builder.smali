.class Landroidx/media/AudioAttributesImplBase$Builder;
.super Ljava/lang/Object;
.source "AudioAttributesImplBase.java"

# interfaces
.implements Landroidx/media/AudioAttributesImpl$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/AudioAttributesImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mContentType:I

.field private mFlags:I

.field private mLegacyStream:I

.field private mUsage:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 166
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mUsage:I

    .line 167
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mContentType:I

    .line 168
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mFlags:I

    const/4 v0, -0x1

    .line 169
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mLegacyStream:I

    return-void
.end method


# virtual methods
.method public build()Landroidx/media/AudioAttributesImpl;
    .registers 6

    .line 183
    new-instance v0, Landroidx/media/AudioAttributesImplBase;

    iget v1, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mContentType:I

    iget v2, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mFlags:I

    iget v3, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mUsage:I

    iget v4, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mLegacyStream:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media/AudioAttributesImplBase;-><init>(IIII)V

    return-object v0
.end method

.method public bridge synthetic setContentType(I)Landroidx/media/AudioAttributesImpl$Builder;
    .registers 2

    .line 165
    invoke-virtual {p0, p1}, Landroidx/media/AudioAttributesImplBase$Builder;->setContentType(I)Landroidx/media/AudioAttributesImplBase$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setContentType(I)Landroidx/media/AudioAttributesImplBase$Builder;
    .registers 3

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    if-eq p1, v0, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_12

    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    const/4 v0, 0x4

    if-eq p1, v0, :cond_12

    const/4 p1, 0x0

    .line 228
    iput p1, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mUsage:I

    goto :goto_14

    .line 225
    :cond_12
    iput p1, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mContentType:I

    :goto_14
    return-object p0
.end method

.method public bridge synthetic setFlags(I)Landroidx/media/AudioAttributesImpl$Builder;
    .registers 2

    .line 165
    invoke-virtual {p0, p1}, Landroidx/media/AudioAttributesImplBase$Builder;->setFlags(I)Landroidx/media/AudioAttributesImplBase$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setFlags(I)Landroidx/media/AudioAttributesImplBase$Builder;
    .registers 3

    and-int/lit16 p1, p1, 0x3ff

    .line 236
    iget v0, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mFlags:I

    return-object p0
.end method

.method public bridge synthetic setLegacyStreamType(I)Landroidx/media/AudioAttributesImpl$Builder;
    .registers 2

    .line 165
    invoke-virtual {p0, p1}, Landroidx/media/AudioAttributesImplBase$Builder;->setLegacyStreamType(I)Landroidx/media/AudioAttributesImplBase$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLegacyStreamType(I)Landroidx/media/AudioAttributesImplBase$Builder;
    .registers 3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_7

    .line 247
    iput p1, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mLegacyStream:I

    return-object p0

    .line 243
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setUsage(I)Landroidx/media/AudioAttributesImpl$Builder;
    .registers 2

    .line 165
    invoke-virtual {p0, p1}, Landroidx/media/AudioAttributesImplBase$Builder;->setUsage(I)Landroidx/media/AudioAttributesImplBase$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUsage(I)Landroidx/media/AudioAttributesImplBase$Builder;
    .registers 2

    packed-switch p1, :pswitch_data_10

    const/4 p1, 0x0

    .line 212
    iput p1, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mUsage:I

    goto :goto_e

    :pswitch_7
    const/16 p1, 0xc

    .line 209
    iput p1, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mUsage:I

    goto :goto_e

    .line 205
    :pswitch_c
    iput p1, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mUsage:I

    :goto_e
    return-object p0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_7
    .end packed-switch
.end method
