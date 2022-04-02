.class public Lcom/yandex/metrica/impl/ob/cu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/cu;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cq;
    .registers 3

    .line 27
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cu;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 28
    invoke-static {}, Lcom/yandex/metrica/impl/ob/co;->a()Lcom/yandex/metrica/impl/ob/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/co;->c()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/ob/cs;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/cs;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 31
    :cond_18
    new-instance v0, Lcom/yandex/metrica/impl/ob/cr;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/cr;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
