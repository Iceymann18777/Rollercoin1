.class public Lcom/mopub/nativeads/NativeClickHandler;
.super Ljava/lang/Object;
.source "NativeClickHandler.java"


# instance fields
.field private mClickInProgress:Z

.field private final mContext:Landroid/content/Context;

.field private final mDspCreativeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/mopub/nativeads/NativeClickHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/nativeads/NativeClickHandler;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/mopub/nativeads/NativeClickHandler;->mDspCreativeId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/mopub/nativeads/NativeClickHandler;Z)Z
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcom/mopub/nativeads/NativeClickHandler;->mClickInProgress:Z

    return p1
.end method

.method private setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 5

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    .line 77
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 78
    :goto_a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/mopub/nativeads/NativeClickHandler;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method


# virtual methods
.method public clearOnClickListener(Landroid/view/View;)V
    .registers 3

    const-string v0, "Cannot clear click listener from a null view"

    .line 90
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 94
    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, v0}, Lcom/mopub/nativeads/NativeClickHandler;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public openClickDestinationUrl(Ljava/lang/String;Landroid/view/View;)V
    .registers 5

    .line 106
    new-instance v0, Lcom/mopub/nativeads/SpinningProgressView;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeClickHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/nativeads/SpinningProgressView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/mopub/nativeads/NativeClickHandler;->openClickDestinationUrl(Ljava/lang/String;Landroid/view/View;Lcom/mopub/nativeads/SpinningProgressView;)V

    return-void
.end method

.method openClickDestinationUrl(Ljava/lang/String;Landroid/view/View;Lcom/mopub/nativeads/SpinningProgressView;)V
    .registers 10

    const-string v0, "Cannot open a null click destination url"

    .line 115
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 119
    :cond_9
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 121
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeClickHandler;->mClickInProgress:Z

    if-eqz v0, :cond_11

    return-void

    :cond_11
    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/mopub/nativeads/NativeClickHandler;->mClickInProgress:Z

    if-eqz p2, :cond_19

    .line 127
    invoke-virtual {p3, p2}, Lcom/mopub/nativeads/SpinningProgressView;->addToRoot(Landroid/view/View;)Z

    .line 130
    :cond_19
    new-instance v1, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {v1}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    .line 131
    iget-object v2, p0, Lcom/mopub/nativeads/NativeClickHandler;->mDspCreativeId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 132
    iget-object v2, p0, Lcom/mopub/nativeads/NativeClickHandler;->mDspCreativeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mopub/common/UrlHandler$Builder;->withDspCreativeId(Ljava/lang/String;)Lcom/mopub/common/UrlHandler$Builder;

    .line 134
    :cond_2b
    sget-object v2, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/mopub/common/UrlAction;

    const/4 v4, 0x0

    sget-object v5, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v5, v3, v4

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_APP_MARKET:Lcom/mopub/common/UrlAction;

    aput-object v4, v3, v0

    const/4 v0, 0x2

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v3, v0

    const/4 v0, 0x3

    sget-object v4, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    aput-object v4, v3, v0

    const/4 v0, 0x4

    sget-object v4, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    aput-object v4, v3, v0

    const/4 v0, 0x5

    sget-object v4, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Lcom/mopub/common/UrlAction;[Lcom/mopub/common/UrlAction;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    new-instance v1, Lcom/mopub/nativeads/NativeClickHandler$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/mopub/nativeads/NativeClickHandler$2;-><init>(Lcom/mopub/nativeads/NativeClickHandler;Landroid/view/View;Lcom/mopub/nativeads/SpinningProgressView;)V

    .line 142
    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withResultActions(Lcom/mopub/common/UrlHandler$ResultActions;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p2

    .line 163
    invoke-virtual {p2}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object p2

    iget-object p3, p0, Lcom/mopub/nativeads/NativeClickHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3, p1}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View;Lcom/mopub/nativeads/ClickInterface;)V
    .registers 4

    const-string v0, "Cannot set click listener on a null view"

    .line 49
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-string v0, "Cannot set click listener with a null ClickInterface"

    .line 52
    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 57
    :cond_12
    new-instance v0, Lcom/mopub/nativeads/NativeClickHandler$1;

    invoke-direct {v0, p0, p2}, Lcom/mopub/nativeads/NativeClickHandler$1;-><init>(Lcom/mopub/nativeads/NativeClickHandler;Lcom/mopub/nativeads/ClickInterface;)V

    invoke-direct {p0, p1, v0}, Lcom/mopub/nativeads/NativeClickHandler;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-void
.end method
