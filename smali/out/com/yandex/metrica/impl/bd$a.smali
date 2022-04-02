.class Lcom/yandex/metrica/impl/bd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ai$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 67
    invoke-direct {p0}, Lcom/yandex/metrica/impl/bd$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 4

    .line 71
    new-instance v0, Lcom/yandex/metrica/impl/ob/di;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/di;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 72
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/di;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 74
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ci;->a()Lcom/yandex/metrica/impl/ob/ci;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/yandex/metrica/impl/ob/ci;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 76
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/di;->b(Landroid/content/Context;)V

    :cond_21
    return-void
.end method
