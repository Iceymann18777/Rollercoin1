.class final Lcom/appnext/core/e$1$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/e$1;->onMarket(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic gC:Lcom/appnext/core/e$1;


# direct methods
.method constructor <init>(Lcom/appnext/core/e$1;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/appnext/core/e$1$1;->gC:Lcom/appnext/core/e$1;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    :cond_4
    const-string v1, "about:blank"

    .line 142
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v0

    .line 145
    :cond_d
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
