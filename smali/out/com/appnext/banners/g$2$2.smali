.class final Lcom/appnext/banners/g$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/banners/g$2;->error(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dk:Lcom/appnext/banners/g$2;


# direct methods
.method constructor <init>(Lcom/appnext/banners/g$2;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/appnext/banners/g$2$2;->dk:Lcom/appnext/banners/g$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/appnext/banners/g$2$2;->dk:Lcom/appnext/banners/g$2;

    iget-object v0, v0, Lcom/appnext/banners/g$2;->di:Lcom/appnext/banners/g;

    iget-object v1, p0, Lcom/appnext/banners/g$2$2;->dk:Lcom/appnext/banners/g$2;

    iget-object v1, v1, Lcom/appnext/banners/g$2;->dj:Ljava/lang/String;

    iget-object v2, p0, Lcom/appnext/banners/g$2$2;->dk:Lcom/appnext/banners/g$2;

    iget-object v2, v2, Lcom/appnext/banners/g$2;->di:Lcom/appnext/banners/g;

    invoke-virtual {v2}, Lcom/appnext/banners/g;->getFallbackScript()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appnext/banners/g;->loadWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
