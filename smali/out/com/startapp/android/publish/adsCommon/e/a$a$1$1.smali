.class Lcom/startapp/android/publish/adsCommon/e/a$a$1$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/adsCommon/f/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/adsCommon/e/a$a$1;->a(Landroid/content/Context;ILjava/util/Map;Lcom/startapp/common/b/a/b$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/common/b/a/b$b;

.field final synthetic b:Lcom/startapp/android/publish/adsCommon/e/a$a$1;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/adsCommon/e/a$a$1;Lcom/startapp/common/b/a/b$b;)V
    .registers 3

    .line 38
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/e/a$a$1$1;->b:Lcom/startapp/android/publish/adsCommon/e/a$a$1;

    iput-object p2, p0, Lcom/startapp/android/publish/adsCommon/e/a$a$1$1;->a:Lcom/startapp/common/b/a/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    .line 41
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/e/a$a$1$1;->a:Lcom/startapp/common/b/a/b$b;

    sget-object v0, Lcom/startapp/common/b/a/b$a;->a:Lcom/startapp/common/b/a/b$a;

    invoke-interface {p1, v0}, Lcom/startapp/common/b/a/b$b;->a(Lcom/startapp/common/b/a/b$a;)V

    return-void
.end method
