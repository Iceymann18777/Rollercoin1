.class final Lcom/truenet/android/b$e;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truenet/android/b;->a(Ljava/lang/String;Ljava/util/List;)Lcom/truenet/android/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/net/HttpURLConnection;

.field final synthetic b:Lcom/truenet/android/b;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/net/URL;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;Lcom/truenet/android/b;Ljava/util/List;Ljava/net/URL;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/truenet/android/b$e;->a:Ljava/net/HttpURLConnection;

    iput-object p2, p0, Lcom/truenet/android/b$e;->b:Lcom/truenet/android/b;

    iput-object p3, p0, Lcom/truenet/android/b$e;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/truenet/android/b$e;->d:Ljava/net/URL;

    iput-object p5, p0, Lcom/truenet/android/b$e;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 136
    iget-object v0, p0, Lcom/truenet/android/b$e;->b:Lcom/truenet/android/b;

    invoke-static {v0}, Lcom/truenet/android/b;->b(Lcom/truenet/android/b;)Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v2, p0, Lcom/truenet/android/b$e;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/truenet/android/b$e;->b:Lcom/truenet/android/b;

    invoke-virtual {v0}, Lcom/truenet/android/b;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/truenet/android/b$e;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/truenet/android/b$e;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void
.end method
