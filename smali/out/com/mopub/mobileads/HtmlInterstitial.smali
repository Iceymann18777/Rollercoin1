.class public Lcom/mopub/mobileads/HtmlInterstitial;
.super Lcom/mopub/mobileads/ResponseBodyInterstitial;
.source "HtmlInterstitial.java"


# static fields
.field public static final ADAPTER_NAME:Ljava/lang/String;


# instance fields
.field private mClickthroughUrl:Ljava/lang/String;

.field private mHtmlData:Ljava/lang/String;

.field private mOrientation:Lcom/mopub/common/CreativeOrientation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    const-class v0, Lcom/mopub/mobileads/HtmlInterstitial;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/HtmlInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
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

    .line 29
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/mobileads/HtmlInterstitial;->mHtmlData:Ljava/lang/String;

    const-string v0, "clickthrough-url"

    .line 30
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/mobileads/HtmlInterstitial;->mClickthroughUrl:Ljava/lang/String;

    const-string v0, "com_mopub_orientation"

    .line 31
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/mopub/common/CreativeOrientation;->fromString(Ljava/lang/String;)Lcom/mopub/common/CreativeOrientation;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/HtmlInterstitial;->mOrientation:Lcom/mopub/common/CreativeOrientation;

    return-void
.end method

.method protected preRenderHtml(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .registers 13

    .line 36
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/HtmlInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 37
    iget-object v5, p0, Lcom/mopub/mobileads/HtmlInterstitial;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/mopub/mobileads/HtmlInterstitial;->mAdReport:Lcom/mopub/common/AdReport;

    iget-object v8, p0, Lcom/mopub/mobileads/HtmlInterstitial;->mClickthroughUrl:Ljava/lang/String;

    iget-wide v9, p0, Lcom/mopub/mobileads/HtmlInterstitial;->mBroadcastIdentifier:J

    move-object v4, p0

    move-object v7, p1

    invoke-static/range {v4 .. v10}, Lcom/mopub/mobileads/MoPubActivity;->preRenderHtml(Lcom/mopub/mobileads/Interstitial;Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;J)V

    return-void
.end method

.method public showInterstitial()V
    .registers 11

    .line 42
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/HtmlInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 43
    iget-object v4, p0, Lcom/mopub/mobileads/HtmlInterstitial;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mopub/mobileads/HtmlInterstitial;->mAdReport:Lcom/mopub/common/AdReport;

    iget-object v6, p0, Lcom/mopub/mobileads/HtmlInterstitial;->mClickthroughUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/mopub/mobileads/HtmlInterstitial;->mOrientation:Lcom/mopub/common/CreativeOrientation;

    iget-wide v8, p0, Lcom/mopub/mobileads/HtmlInterstitial;->mBroadcastIdentifier:J

    invoke-static/range {v4 .. v9}, Lcom/mopub/mobileads/MoPubActivity;->start(Landroid/content/Context;Lcom/mopub/common/AdReport;Ljava/lang/String;Lcom/mopub/common/CreativeOrientation;J)V

    return-void
.end method
