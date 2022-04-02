.class public Lcom/appnext/banners/BannerAdRequest;
.super Lcom/appnext/core/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_ALL:Ljava/lang/String; = "all"

.field public static final TYPE_STATIC:Ljava/lang/String; = "static"

.field public static final TYPE_VIDEO:Ljava/lang/String; = "video"

.field public static final VIDEO_LENGTH_LONG:Ljava/lang/String; = "30"

.field public static final VIDEO_LENGTH_SHORT:Ljava/lang/String; = "15"


# instance fields
.field private autoPlay:Z

.field private cS:I

.field private cT:I

.field private categories:Ljava/lang/String;

.field private clickEnabled:Z

.field private creativeType:Ljava/lang/String;

.field private mute:Z

.field private postback:Ljava/lang/String;

.field private videoLength:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 26
    invoke-direct {p0}, Lcom/appnext/core/c;-><init>()V

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/appnext/banners/BannerAdRequest;->categories:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/appnext/banners/BannerAdRequest;->postback:Ljava/lang/String;

    const-string v0, "all"

    .line 18
    iput-object v0, p0, Lcom/appnext/banners/BannerAdRequest;->creativeType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/appnext/banners/BannerAdRequest;->autoPlay:Z

    const/4 v1, 0x1

    .line 20
    iput-boolean v1, p0, Lcom/appnext/banners/BannerAdRequest;->mute:Z

    const-string v2, "15"

    .line 21
    iput-object v2, p0, Lcom/appnext/banners/BannerAdRequest;->videoLength:Ljava/lang/String;

    .line 22
    iput v0, p0, Lcom/appnext/banners/BannerAdRequest;->cS:I

    .line 23
    iput v0, p0, Lcom/appnext/banners/BannerAdRequest;->cT:I

    .line 24
    iput-boolean v1, p0, Lcom/appnext/banners/BannerAdRequest;->clickEnabled:Z

    return-void
.end method

.method constructor <init>(Lcom/appnext/banners/BannerAdRequest;)V
    .registers 5

    .line 30
    invoke-direct {p0}, Lcom/appnext/core/c;-><init>()V

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/appnext/banners/BannerAdRequest;->categories:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/appnext/banners/BannerAdRequest;->postback:Ljava/lang/String;

    const-string v0, "all"

    .line 18
    iput-object v0, p0, Lcom/appnext/banners/BannerAdRequest;->creativeType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/appnext/banners/BannerAdRequest;->autoPlay:Z

    const/4 v1, 0x1

    .line 20
    iput-boolean v1, p0, Lcom/appnext/banners/BannerAdRequest;->mute:Z

    const-string v2, "15"

    .line 21
    iput-object v2, p0, Lcom/appnext/banners/BannerAdRequest;->videoLength:Ljava/lang/String;

    .line 22
    iput v0, p0, Lcom/appnext/banners/BannerAdRequest;->cS:I

    .line 23
    iput v0, p0, Lcom/appnext/banners/BannerAdRequest;->cT:I

    .line 24
    iput-boolean v1, p0, Lcom/appnext/banners/BannerAdRequest;->clickEnabled:Z

    .line 31
    iget-object v0, p1, Lcom/appnext/banners/BannerAdRequest;->categories:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/banners/BannerAdRequest;->categories:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lcom/appnext/banners/BannerAdRequest;->postback:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/banners/BannerAdRequest;->postback:Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lcom/appnext/banners/BannerAdRequest;->creativeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/banners/BannerAdRequest;->creativeType:Ljava/lang/String;

    .line 34
    iget-boolean v0, p1, Lcom/appnext/banners/BannerAdRequest;->autoPlay:Z

    iput-boolean v0, p0, Lcom/appnext/banners/BannerAdRequest;->autoPlay:Z

    .line 35
    iget-boolean v0, p1, Lcom/appnext/banners/BannerAdRequest;->mute:Z

    iput-boolean v0, p0, Lcom/appnext/banners/BannerAdRequest;->mute:Z

    .line 36
    iget-object v0, p1, Lcom/appnext/banners/BannerAdRequest;->videoLength:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/banners/BannerAdRequest;->videoLength:Ljava/lang/String;

    .line 37
    iget v0, p1, Lcom/appnext/banners/BannerAdRequest;->cS:I

    iput v0, p0, Lcom/appnext/banners/BannerAdRequest;->cS:I

    .line 38
    iget v0, p1, Lcom/appnext/banners/BannerAdRequest;->cT:I

    iput v0, p0, Lcom/appnext/banners/BannerAdRequest;->cT:I

    .line 39
    iget-boolean p1, p1, Lcom/appnext/banners/BannerAdRequest;->clickEnabled:Z

    iput-boolean p1, p0, Lcom/appnext/banners/BannerAdRequest;->clickEnabled:Z

    return-void
.end method


# virtual methods
.method public getCategories()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/appnext/banners/BannerAdRequest;->categories:Ljava/lang/String;

    return-object v0
.end method

.method public getCreativeType()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/appnext/banners/BannerAdRequest;->creativeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPostback()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/appnext/banners/BannerAdRequest;->postback:Ljava/lang/String;

    return-object v0
.end method

.method public getVidMax()I
    .registers 2

    .line 116
    iget v0, p0, Lcom/appnext/banners/BannerAdRequest;->cT:I

    return v0
.end method

.method public getVidMin()I
    .registers 2

    .line 112
    iget v0, p0, Lcom/appnext/banners/BannerAdRequest;->cS:I

    return v0
.end method

.method public getVideoLength()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/appnext/banners/BannerAdRequest;->videoLength:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoPlay()Z
    .registers 2

    .line 100
    iget-boolean v0, p0, Lcom/appnext/banners/BannerAdRequest;->autoPlay:Z

    return v0
.end method

.method public isClickEnabled()Z
    .registers 2

    .line 120
    iget-boolean v0, p0, Lcom/appnext/banners/BannerAdRequest;->clickEnabled:Z

    return v0
.end method

.method public isMute()Z
    .registers 2

    .line 104
    iget-boolean v0, p0, Lcom/appnext/banners/BannerAdRequest;->mute:Z

    return v0
.end method

.method public setAutoPlay(Z)Lcom/appnext/banners/BannerAdRequest;
    .registers 2

    .line 58
    iput-boolean p1, p0, Lcom/appnext/banners/BannerAdRequest;->autoPlay:Z

    return-object p0
.end method

.method public setCategories(Ljava/lang/String;)Lcom/appnext/banners/BannerAdRequest;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/appnext/banners/BannerAdRequest;->categories:Ljava/lang/String;

    return-object p0
.end method

.method public setClickEnabled(Z)Lcom/appnext/banners/BannerAdRequest;
    .registers 2

    .line 83
    iput-boolean p1, p0, Lcom/appnext/banners/BannerAdRequest;->clickEnabled:Z

    return-object p0
.end method

.method public setCreativeType(Ljava/lang/String;)Lcom/appnext/banners/BannerAdRequest;
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/appnext/banners/BannerAdRequest;->creativeType:Ljava/lang/String;

    return-object p0
.end method

.method public setMute(Z)Lcom/appnext/banners/BannerAdRequest;
    .registers 2

    .line 63
    iput-boolean p1, p0, Lcom/appnext/banners/BannerAdRequest;->mute:Z

    return-object p0
.end method

.method public setPostback(Ljava/lang/String;)Lcom/appnext/banners/BannerAdRequest;
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/appnext/banners/BannerAdRequest;->postback:Ljava/lang/String;

    return-object p0
.end method

.method public setVidMax(I)Lcom/appnext/banners/BannerAdRequest;
    .registers 2

    .line 78
    iput p1, p0, Lcom/appnext/banners/BannerAdRequest;->cT:I

    return-object p0
.end method

.method public setVidMin(I)Lcom/appnext/banners/BannerAdRequest;
    .registers 2

    .line 73
    iput p1, p0, Lcom/appnext/banners/BannerAdRequest;->cS:I

    return-object p0
.end method

.method public setVideoLength(Ljava/lang/String;)Lcom/appnext/banners/BannerAdRequest;
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/appnext/banners/BannerAdRequest;->videoLength:Ljava/lang/String;

    return-object p0
.end method
