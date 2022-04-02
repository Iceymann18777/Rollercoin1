.class final Lcom/yandex/metrica/impl/ob/dv$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/dv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/yandex/metrica/impl/ob/du;",
        "Lcom/yandex/metrica/IIdentifierCallback$Reason;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 36
    sget-object v0, Lcom/yandex/metrica/impl/ob/du;->a:Lcom/yandex/metrica/impl/ob/du;

    sget-object v1, Lcom/yandex/metrica/IIdentifierCallback$Reason;->UNKNOWN:Lcom/yandex/metrica/IIdentifierCallback$Reason;

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/dv$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/yandex/metrica/impl/ob/du;->b:Lcom/yandex/metrica/impl/ob/du;

    sget-object v1, Lcom/yandex/metrica/IIdentifierCallback$Reason;->NETWORK:Lcom/yandex/metrica/IIdentifierCallback$Reason;

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/dv$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/yandex/metrica/impl/ob/du;->c:Lcom/yandex/metrica/impl/ob/du;

    sget-object v1, Lcom/yandex/metrica/IIdentifierCallback$Reason;->INVALID_RESPONSE:Lcom/yandex/metrica/IIdentifierCallback$Reason;

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/dv$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
