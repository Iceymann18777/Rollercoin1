.class synthetic Lcom/yandex/metrica/impl/ob/cf$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/cf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 30
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ce$a;->values()[Lcom/yandex/metrica/impl/ob/ce$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yandex/metrica/impl/ob/cf$1;->a:[I

    :try_start_9
    sget-object v1, Lcom/yandex/metrica/impl/ob/ce$a;->a:Lcom/yandex/metrica/impl/ob/ce$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ce$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/yandex/metrica/impl/ob/cf$1;->a:[I

    sget-object v1, Lcom/yandex/metrica/impl/ob/ce$a;->b:Lcom/yandex/metrica/impl/ob/ce$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ce$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
