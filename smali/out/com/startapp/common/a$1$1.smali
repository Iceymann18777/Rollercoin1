.class Lcom/startapp/common/a$1$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/common/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/startapp/common/a$1;


# direct methods
.method constructor <init>(Lcom/startapp/common/a$1;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 33
    iput-object p1, p0, Lcom/startapp/common/a$1$1;->b:Lcom/startapp/common/a$1;

    iput-object p2, p0, Lcom/startapp/common/a$1$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 36
    iget-object v0, p0, Lcom/startapp/common/a$1$1;->b:Lcom/startapp/common/a$1;

    iget-object v0, v0, Lcom/startapp/common/a$1;->a:Lcom/startapp/common/a;

    iget-object v0, v0, Lcom/startapp/common/a;->b:Lcom/startapp/common/a$a;

    if-eqz v0, :cond_19

    .line 37
    iget-object v0, p0, Lcom/startapp/common/a$1$1;->b:Lcom/startapp/common/a$1;

    iget-object v0, v0, Lcom/startapp/common/a$1;->a:Lcom/startapp/common/a;

    iget-object v0, v0, Lcom/startapp/common/a;->b:Lcom/startapp/common/a$a;

    iget-object v1, p0, Lcom/startapp/common/a$1$1;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/startapp/common/a$1$1;->b:Lcom/startapp/common/a$1;

    iget-object v2, v2, Lcom/startapp/common/a$1;->a:Lcom/startapp/common/a;

    iget v2, v2, Lcom/startapp/common/a;->c:I

    invoke-interface {v0, v1, v2}, Lcom/startapp/common/a$a;->a(Landroid/graphics/Bitmap;I)V

    :cond_19
    return-void
.end method
