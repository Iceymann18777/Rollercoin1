.class Lcom/startapp/android/publish/common/metaData/e$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/common/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/common/metaData/e;->a(Landroid/content/Context;ILjava/util/Map;Lcom/startapp/common/b/a/b$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/common/b/a/b$b;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/startapp/android/publish/common/metaData/e;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/common/metaData/e;Lcom/startapp/common/b/a/b$b;Landroid/content/Context;)V
    .registers 4

    .line 30
    iput-object p1, p0, Lcom/startapp/android/publish/common/metaData/e$1;->c:Lcom/startapp/android/publish/common/metaData/e;

    iput-object p2, p0, Lcom/startapp/android/publish/common/metaData/e$1;->a:Lcom/startapp/common/b/a/b$b;

    iput-object p3, p0, Lcom/startapp/android/publish/common/metaData/e$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 3

    .line 33
    iget-object p1, p0, Lcom/startapp/android/publish/common/metaData/e$1;->a:Lcom/startapp/common/b/a/b$b;

    if-eqz p1, :cond_10

    .line 34
    iget-object p1, p0, Lcom/startapp/android/publish/common/metaData/e$1;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/Utils/b;->d(Landroid/content/Context;)V

    .line 35
    iget-object p1, p0, Lcom/startapp/android/publish/common/metaData/e$1;->a:Lcom/startapp/common/b/a/b$b;

    sget-object v0, Lcom/startapp/common/b/a/b$a;->a:Lcom/startapp/common/b/a/b$a;

    invoke-interface {p1, v0}, Lcom/startapp/common/b/a/b$b;->a(Lcom/startapp/common/b/a/b$a;)V

    :cond_10
    return-void
.end method
