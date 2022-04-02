.class public abstract Lcom/mopub/nativeads/VideoNativeAd;
.super Lcom/mopub/nativeads/BaseNativeAd;
.source "VideoNativeAd.java"

# interfaces
.implements Lcom/mopub/nativeads/NativeVideoController$Listener;


# instance fields
.field private mCallToAction:Ljava/lang/String;

.field private mClickDestinationUrl:Ljava/lang/String;

.field private final mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mIconImageUrl:Ljava/lang/String;

.field private mMainImageUrl:Ljava/lang/String;

.field private mPrivacyInformationIconClickThroughUrl:Ljava/lang/String;

.field private mPrivacyInformationIconImageUrl:Ljava/lang/String;

.field private mSponsored:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mVastVideo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Lcom/mopub/nativeads/BaseNativeAd;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/VideoNativeAd;->mExtras:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    const-string v0, "addExtra key is not allowed to be null"

    .line 168
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 171
    :cond_9
    iget-object v0, p0, Lcom/mopub/nativeads/VideoNativeAd;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public destroy()V
    .registers 1

    return-void
.end method

.method public getCallToAction()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/mopub/nativeads/VideoNativeAd;->mCallToAction:Ljava/lang/String;

    return-object v0
.end method

.method public getClickDestinationUrl()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/mopub/nativeads/VideoNativeAd;->mClickDestinationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const-string v0, "getExtra key is not allowed to be null"

    .line 114
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 117
    :cond_a
    iget-object v0, p0, Lcom/mopub/nativeads/VideoNativeAd;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtras()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/mopub/nativeads/VideoNativeAd;->mExtras:Ljava/util/Map;

    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/mopub/nativeads/VideoNativeAd;->mIconImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMainImageUrl()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/mopub/nativeads/VideoNativeAd;->mMainImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacyInformationIconClickThroughUrl()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/mopub/nativeads/VideoNativeAd;->mPrivacyInformationIconClickThroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacyInformationIconImageUrl()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/mopub/nativeads/VideoNativeAd;->mPrivacyInformationIconImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSponsored()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/mopub/nativeads/VideoNativeAd;->mSponsored:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/mopub/nativeads/VideoNativeAd;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/mopub/nativeads/VideoNativeAd;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVastVideo()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/mopub/nativeads/VideoNativeAd;->mVastVideo:Ljava/lang/String;

    return-object v0
.end method

.method public prepare(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public render(Lcom/mopub/nativeads/MediaLayout;)V
    .registers 2

    return-void
.end method

.method public setCallToAction(Ljava/lang/String;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/mopub/nativeads/VideoNativeAd;->mCallToAction:Ljava/lang/String;

    return-void
.end method

.method public setClickDestinationUrl(Ljava/lang/String;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/mopub/nativeads/VideoNativeAd;->mClickDestinationUrl:Ljava/lang/String;

    return-void
.end method

.method public setIconImageUrl(Ljava/lang/String;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/mopub/nativeads/VideoNativeAd;->mIconImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setMainImageUrl(Ljava/lang/String;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/mopub/nativeads/VideoNativeAd;->mMainImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setPrivacyInformationIconClickThroughUrl(Ljava/lang/String;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/mopub/nativeads/VideoNativeAd;->mPrivacyInformationIconClickThroughUrl:Ljava/lang/String;

    return-void
.end method

.method public setPrivacyInformationIconImageUrl(Ljava/lang/String;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/mopub/nativeads/VideoNativeAd;->mPrivacyInformationIconImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setSponsored(Ljava/lang/String;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/mopub/nativeads/VideoNativeAd;->mSponsored:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/mopub/nativeads/VideoNativeAd;->mText:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/mopub/nativeads/VideoNativeAd;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setVastVideo(Ljava/lang/String;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/mopub/nativeads/VideoNativeAd;->mVastVideo:Ljava/lang/String;

    return-void
.end method
