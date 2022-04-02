.class Lcom/yandex/metrica/impl/ob/fs$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/fs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/fu$a;

.field private b:Lcom/yandex/metrica/impl/ob/fr;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/ob/fu$a;Lcom/yandex/metrica/impl/ob/fr;)V
    .registers 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fs$a;->a:Lcom/yandex/metrica/impl/ob/fu$a;

    .line 103
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/fs$a;->b:Lcom/yandex/metrica/impl/ob/fr;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ob/fu$a;Lcom/yandex/metrica/impl/ob/fr;B)V
    .registers 4

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/fs$a;-><init>(Lcom/yandex/metrica/impl/ob/fu$a;Lcom/yandex/metrica/impl/ob/fr;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fs$a;->a:Lcom/yandex/metrica/impl/ob/fu$a;

    if-eqz v0, :cond_9

    .line 109
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fs$a;->b:Lcom/yandex/metrica/impl/ob/fr;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/fu$a;->a(Lcom/yandex/metrica/impl/ob/fr;)V

    :cond_9
    return-void
.end method
