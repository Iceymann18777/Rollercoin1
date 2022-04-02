.class Lcom/mopub/mobileads/WebViewCacheService$TrimCacheRunnable;
.super Ljava/lang/Object;
.source "WebViewCacheService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/WebViewCacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrimCacheRunnable"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/WebViewCacheService$1;)V
    .registers 2

    .line 160
    invoke-direct {p0}, Lcom/mopub/mobileads/WebViewCacheService$TrimCacheRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 163
    invoke-static {}, Lcom/mopub/mobileads/WebViewCacheService;->trimCache()V

    return-void
.end method
