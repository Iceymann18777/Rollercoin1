.class Lcom/yandex/metrica/impl/aj$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/aj;

.field private final b:Lcom/yandex/metrica/impl/ak;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/aj;Lcom/yandex/metrica/impl/ak;)V
    .registers 3

    .line 274
    iput-object p1, p0, Lcom/yandex/metrica/impl/aj$a;->a:Lcom/yandex/metrica/impl/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p2, p0, Lcom/yandex/metrica/impl/aj$a;->b:Lcom/yandex/metrica/impl/ak;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/aj;Lcom/yandex/metrica/impl/ak;B)V
    .registers 4

    .line 270
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/aj$a;-><init>(Lcom/yandex/metrica/impl/aj;Lcom/yandex/metrica/impl/ak;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/aj$a;->a:Lcom/yandex/metrica/impl/aj;

    iget-object v1, p0, Lcom/yandex/metrica/impl/aj$a;->b:Lcom/yandex/metrica/impl/ak;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/aj;->c(Lcom/yandex/metrica/impl/ak;)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    .line 283
    :catch_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
