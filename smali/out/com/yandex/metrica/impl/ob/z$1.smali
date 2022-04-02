.class synthetic Lcom/yandex/metrica/impl/ob/z$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/z;
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

    .line 49
    invoke-static {}, Lcom/yandex/metrica/impl/p$a;->values()[Lcom/yandex/metrica/impl/p$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yandex/metrica/impl/ob/z$1;->a:[I

    :try_start_9
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->d:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/p$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/yandex/metrica/impl/ob/z$1;->a:[I

    sget-object v1, Lcom/yandex/metrica/impl/p$a;->B:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/p$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/yandex/metrica/impl/ob/z$1;->a:[I

    sget-object v1, Lcom/yandex/metrica/impl/p$a;->n:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/p$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/yandex/metrica/impl/ob/z$1;->a:[I

    sget-object v1, Lcom/yandex/metrica/impl/p$a;->b:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/p$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/yandex/metrica/impl/ob/z$1;->a:[I

    sget-object v1, Lcom/yandex/metrica/impl/p$a;->p:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/p$a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/yandex/metrica/impl/ob/z$1;->a:[I

    sget-object v1, Lcom/yandex/metrica/impl/p$a;->e:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/p$a;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    return-void
.end method
