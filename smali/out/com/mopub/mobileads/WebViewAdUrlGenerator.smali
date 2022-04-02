.class public Lcom/mopub/mobileads/WebViewAdUrlGenerator;
.super Lcom/mopub/common/AdUrlGenerator;
.source "WebViewAdUrlGenerator.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Lcom/mopub/common/AdUrlGenerator;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "/m/ad"

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->initUrlString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "6"

    .line 25
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->setApiVersion(Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->addBaseParams(Lcom/mopub/common/ClientMetadata;)V

    const/4 p1, 0x1

    .line 30
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->setMraidFlag(Z)V

    .line 32
    invoke-static {}, Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;->getEnabledVendorKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->enableViewability(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->getFinalUrlString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
