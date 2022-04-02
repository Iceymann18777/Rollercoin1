.class final Lcom/appnext/banners/a$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/banners/a;->loadAd(Lcom/appnext/banners/BannerAdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cU:Lcom/appnext/banners/a;


# direct methods
.method constructor <init>(Lcom/appnext/banners/a;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/appnext/banners/a$12;->cU:Lcom/appnext/banners/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 137
    iget-object p1, p0, Lcom/appnext/banners/a$12;->cU:Lcom/appnext/banners/a;

    invoke-static {p1}, Lcom/appnext/banners/a;->access$200(Lcom/appnext/banners/a;)V

    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .registers 2

    .line 142
    iget-object p1, p0, Lcom/appnext/banners/a$12;->cU:Lcom/appnext/banners/a;

    invoke-static {p1}, Lcom/appnext/banners/a;->access$200(Lcom/appnext/banners/a;)V

    return-void
.end method
