.class Lcom/mopub/mobileads/HtmlWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "HtmlWebViewClient.java"


# static fields
.field static final MOPUB_FAIL_LOAD:Ljava/lang/String; = "mopub://failLoad"

.field static final MOPUB_FINISH_LOAD:Ljava/lang/String; = "mopub://finishLoad"


# instance fields
.field private final SUPPORTED_URL_ACTIONS:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/mopub/common/UrlAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mClickthroughUrl:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDspCreativeId:Ljava/lang/String;

.field private final mHtmlWebView:Lcom/mopub/mobileads/BaseHtmlWebView;

.field private final mHtmlWebViewListener:Lcom/mopub/mobileads/HtmlWebViewListener;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/HtmlWebViewListener;Lcom/mopub/mobileads/BaseHtmlWebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 41
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 23
    sget-object v0, Lcom/mopub/common/UrlAction;->HANDLE_MOPUB_SCHEME:Lcom/mopub/common/UrlAction;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/mopub/common/UrlAction;

    sget-object v2, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/UrlAction;->HANDLE_PHONE_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/UrlAction;->OPEN_APP_MARKET:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->SUPPORTED_URL_ACTIONS:Ljava/util/EnumSet;

    .line 42
    iput-object p1, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mHtmlWebViewListener:Lcom/mopub/mobileads/HtmlWebViewListener;

    .line 43
    iput-object p2, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mHtmlWebView:Lcom/mopub/mobileads/BaseHtmlWebView;

    .line 44
    iput-object p3, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mClickthroughUrl:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mDspCreativeId:Ljava/lang/String;

    .line 46
    invoke-virtual {p2}, Lcom/mopub/mobileads/BaseHtmlWebView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/HtmlWebViewClient;)Lcom/mopub/mobileads/BaseHtmlWebView;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mHtmlWebView:Lcom/mopub/mobileads/BaseHtmlWebView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/HtmlWebViewClient;)Lcom/mopub/mobileads/HtmlWebViewListener;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mHtmlWebViewListener:Lcom/mopub/mobileads/HtmlWebViewListener;

    return-object p0
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    .line 51
    new-instance p1, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {p1}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    iget-object v0, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mDspCreativeId:Ljava/lang/String;

    .line 52
    invoke-virtual {p1, v0}, Lcom/mopub/common/UrlHandler$Builder;->withDspCreativeId(Ljava/lang/String;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->SUPPORTED_URL_ACTIONS:Ljava/util/EnumSet;

    .line 53
    invoke-virtual {p1, v0}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Ljava/util/EnumSet;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p1

    new-instance v0, Lcom/mopub/mobileads/HtmlWebViewClient$2;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/HtmlWebViewClient$2;-><init>(Lcom/mopub/mobileads/HtmlWebViewClient;)V

    .line 54
    invoke-virtual {p1, v0}, Lcom/mopub/common/UrlHandler$Builder;->withResultActions(Lcom/mopub/common/UrlHandler$ResultActions;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p1

    new-instance v0, Lcom/mopub/mobileads/HtmlWebViewClient$1;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/HtmlWebViewClient$1;-><init>(Lcom/mopub/mobileads/HtmlWebViewClient;)V

    .line 69
    invoke-virtual {p1, v0}, Lcom/mopub/common/UrlHandler$Builder;->withMoPubSchemeListener(Lcom/mopub/common/UrlHandler$MoPubSchemeListener;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mHtmlWebView:Lcom/mopub/mobileads/BaseHtmlWebView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/BaseHtmlWebView;->wasClicked()Z

    move-result v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    const/4 p1, 0x1

    return p1
.end method
