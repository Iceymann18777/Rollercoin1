.class final Lcom/startapp/common/a/e$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/common/a/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/io/Serializable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V
    .registers 4

    .line 34
    iput-object p1, p0, Lcom/startapp/common/a/e$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/startapp/common/a/e$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/startapp/common/a/e$1;->c:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 37
    iget-object v0, p0, Lcom/startapp/common/a/e$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/startapp/common/a/e$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/startapp/common/a/e$1;->c:Ljava/io/Serializable;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/startapp/common/a/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
