.class public Landroidx/media/AudioAttributesCompat$Builder;
.super Ljava/lang/Object;
.source "AudioAttributesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/AudioAttributesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field final mBuilderImpl:Landroidx/media/AudioAttributesImpl$Builder;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    sget-boolean v0, Landroidx/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    if-eqz v0, :cond_f

    .line 369
    new-instance v0, Landroidx/media/AudioAttributesImplBase$Builder;

    invoke-direct {v0}, Landroidx/media/AudioAttributesImplBase$Builder;-><init>()V

    iput-object v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mBuilderImpl:Landroidx/media/AudioAttributesImpl$Builder;

    goto :goto_32

    .line 370
    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1d

    .line 371
    new-instance v0, Landroidx/media/AudioAttributesImplApi26$Builder;

    invoke-direct {v0}, Landroidx/media/AudioAttributesImplApi26$Builder;-><init>()V

    iput-object v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mBuilderImpl:Landroidx/media/AudioAttributesImpl$Builder;

    goto :goto_32

    .line 372
    :cond_1d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2b

    .line 373
    new-instance v0, Landroidx/media/AudioAttributesImplApi21$Builder;

    invoke-direct {v0}, Landroidx/media/AudioAttributesImplApi21$Builder;-><init>()V

    iput-object v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mBuilderImpl:Landroidx/media/AudioAttributesImpl$Builder;

    goto :goto_32

    .line 375
    :cond_2b
    new-instance v0, Landroidx/media/AudioAttributesImplBase$Builder;

    invoke-direct {v0}, Landroidx/media/AudioAttributesImplBase$Builder;-><init>()V

    iput-object v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mBuilderImpl:Landroidx/media/AudioAttributesImpl$Builder;

    :goto_32
    return-void
.end method


# virtual methods
.method public build()Landroidx/media/AudioAttributesCompat;
    .registers 3

    .line 403
    new-instance v0, Landroidx/media/AudioAttributesCompat;

    iget-object v1, p0, Landroidx/media/AudioAttributesCompat$Builder;->mBuilderImpl:Landroidx/media/AudioAttributesImpl$Builder;

    invoke-interface {v1}, Landroidx/media/AudioAttributesImpl$Builder;->build()Landroidx/media/AudioAttributesImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media/AudioAttributesCompat;-><init>(Landroidx/media/AudioAttributesImpl;)V

    return-object v0
.end method

.method public setContentType(I)Landroidx/media/AudioAttributesCompat$Builder;
    .registers 3

    .line 446
    iget-object v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mBuilderImpl:Landroidx/media/AudioAttributesImpl$Builder;

    invoke-interface {v0, p1}, Landroidx/media/AudioAttributesImpl$Builder;->setContentType(I)Landroidx/media/AudioAttributesImpl$Builder;

    return-object p0
.end method

.method public setFlags(I)Landroidx/media/AudioAttributesCompat$Builder;
    .registers 3

    .line 460
    iget-object v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mBuilderImpl:Landroidx/media/AudioAttributesImpl$Builder;

    invoke-interface {v0, p1}, Landroidx/media/AudioAttributesImpl$Builder;->setFlags(I)Landroidx/media/AudioAttributesImpl$Builder;

    return-object p0
.end method

.method public setLegacyStreamType(I)Landroidx/media/AudioAttributesCompat$Builder;
    .registers 3

    .line 472
    iget-object v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mBuilderImpl:Landroidx/media/AudioAttributesImpl$Builder;

    invoke-interface {v0, p1}, Landroidx/media/AudioAttributesImpl$Builder;->setLegacyStreamType(I)Landroidx/media/AudioAttributesImpl$Builder;

    return-object p0
.end method

.method public setUsage(I)Landroidx/media/AudioAttributesCompat$Builder;
    .registers 3

    .line 429
    iget-object v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mBuilderImpl:Landroidx/media/AudioAttributesImpl$Builder;

    invoke-interface {v0, p1}, Landroidx/media/AudioAttributesImpl$Builder;->setUsage(I)Landroidx/media/AudioAttributesImpl$Builder;

    return-object p0
.end method
