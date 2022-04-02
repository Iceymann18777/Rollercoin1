.class abstract Lcom/yandex/metrica/impl/ob/s$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "e"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/t;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 2

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/s$e;->a:Lcom/yandex/metrica/impl/ob/t;

    return-void
.end method


# virtual methods
.method protected abstract a()Z
.end method

.method protected abstract b()V
.end method

.method c()Lcom/yandex/metrica/impl/ob/t;
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$e;->a:Lcom/yandex/metrica/impl/ob/t;

    return-object v0
.end method

.method d()V
    .registers 2

    .line 262
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/s$e;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 263
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/s$e;->b()V

    :cond_9
    return-void
.end method
