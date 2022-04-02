.class Lcom/yandex/metrica/impl/bo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/bo;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/bo;)V
    .registers 2

    .line 203
    iput-object p1, p0, Lcom/yandex/metrica/impl/bo$1;->a:Lcom/yandex/metrica/impl/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Z
    .registers 2

    .line 205
    iget-object p1, p0, Lcom/yandex/metrica/impl/bo$1;->a:Lcom/yandex/metrica/impl/bo;

    invoke-static {p1}, Lcom/yandex/metrica/impl/bo;->a(Lcom/yandex/metrica/impl/bo;)Lcom/yandex/metrica/impl/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/z;->f()Z

    move-result p1

    return p1
.end method
