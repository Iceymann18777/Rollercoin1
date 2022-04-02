.class final Lcom/startapp/common/b/a$2;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/common/b/a;->b(Lcom/startapp/common/b/b;Lcom/startapp/common/b/a/b$b;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/common/b/a/b;

.field final synthetic b:I

.field final synthetic c:Lcom/startapp/common/b/b;

.field final synthetic d:Lcom/startapp/common/b/a/b$b;


# direct methods
.method constructor <init>(Lcom/startapp/common/b/a/b;ILcom/startapp/common/b/b;Lcom/startapp/common/b/a/b$b;)V
    .registers 5

    .line 402
    iput-object p1, p0, Lcom/startapp/common/b/a$2;->a:Lcom/startapp/common/b/a/b;

    iput p2, p0, Lcom/startapp/common/b/a$2;->b:I

    iput-object p3, p0, Lcom/startapp/common/b/a$2;->c:Lcom/startapp/common/b/b;

    iput-object p4, p0, Lcom/startapp/common/b/a$2;->d:Lcom/startapp/common/b/a/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 405
    iget-object v0, p0, Lcom/startapp/common/b/a$2;->a:Lcom/startapp/common/b/a/b;

    invoke-static {}, Lcom/startapp/common/b/a;->a()Lcom/startapp/common/b/a;

    move-result-object v1

    invoke-static {v1}, Lcom/startapp/common/b/a;->b(Lcom/startapp/common/b/a;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/startapp/common/b/a$2;->b:I

    iget-object v3, p0, Lcom/startapp/common/b/a$2;->c:Lcom/startapp/common/b/b;

    invoke-virtual {v3}, Lcom/startapp/common/b/b;->b()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/startapp/common/b/a$2$1;

    invoke-direct {v4, p0}, Lcom/startapp/common/b/a$2$1;-><init>(Lcom/startapp/common/b/a$2;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/startapp/common/b/a/b;->a(Landroid/content/Context;ILjava/util/Map;Lcom/startapp/common/b/a/b$b;)V

    return-void
.end method
