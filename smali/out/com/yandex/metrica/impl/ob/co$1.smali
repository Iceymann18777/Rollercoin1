.class Lcom/yandex/metrica/impl/ob/co$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/fj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/co;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/co;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/co;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/co$1;->a:Lcom/yandex/metrica/impl/ob/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/co$1;->a:Lcom/yandex/metrica/impl/ob/co;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/co;->a(Lcom/yandex/metrica/impl/ob/co;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
