.class Lcom/mopub/mraid/MraidInterstitial;
.super Lcom/mopub/mobileads/ResponseBodyInterstitial;
.source "MraidInterstitial.java"


# static fields
.field public static final ADAPTER_NAME:Ljava/lang/String;


# instance fields
.field protected mHtmlData:Ljava/lang/String;

.field private mOrientation:Lcom/mopub/common/CreativeOrientation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-class v0, Lcom/mopub/mraid/MraidInterstitial;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/mraid/MraidInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/mopub/mobileads/ResponseBodyInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method protected extractExtras(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "html-response-body"

    .line 30
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/mraid/MraidInterstitial;->mHtmlData:Ljava/lang/String;

    const-string v0, "com_mopub_orientation"

    .line 31
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/mopub/common/CreativeOrientation;->fromString(Ljava/lang/String;)Lcom/mopub/common/CreativeOrientation;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mraid/MraidInterstitial;->mOrientation:Lcom/mopub/common/CreativeOrientation;

    return-void
.end method

.method protected preRenderHtml(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .registers 6

    .line 37
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mraid/MraidInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/mopub/mraid/MraidInterstitial;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/mopub/mraid/MraidInterstitial;->mBroadcastIdentifier:J

    .line 39
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mraid/MraidInterstitial;->mAdReport:Lcom/mopub/common/AdReport;

    .line 38
    invoke-static {p0, v0, p1, v1, v2}, Lcom/mopub/mobileads/MraidActivity;->preRenderHtml(Lcom/mopub/mobileads/Interstitial;Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/Long;Lcom/mopub/common/AdReport;)V

    return-void
.end method

.method public showInterstitial()V
    .registers 6

    .line 44
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mraid/MraidInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/mopub/mraid/MraidInterstitial;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/mraid/MraidInterstitial;->mAdReport:Lcom/mopub/common/AdReport;

    iget-wide v2, p0, Lcom/mopub/mraid/MraidInterstitial;->mBroadcastIdentifier:J

    iget-object v4, p0, Lcom/mopub/mraid/MraidInterstitial;->mOrientation:Lcom/mopub/common/CreativeOrientation;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mopub/mobileads/MraidActivity;->start(Landroid/content/Context;Lcom/mopub/common/AdReport;JLcom/mopub/common/CreativeOrientation;)V

    return-void
.end method
