.class final Lcom/yandex/metrica/impl/ag$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ag;

.field private final b:I

.field private final c:Lcom/yandex/metrica/impl/h;

.field private final d:Landroid/os/Bundle;

.field private final e:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ag;Landroid/content/Context;Lcom/yandex/metrica/impl/h;Landroid/os/Bundle;I)V
    .registers 6

    .line 274
    iput-object p1, p0, Lcom/yandex/metrica/impl/ag$a;->a:Lcom/yandex/metrica/impl/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ag$a;->e:Landroid/content/Context;

    .line 276
    iput p5, p0, Lcom/yandex/metrica/impl/ag$a;->b:I

    .line 277
    iput-object p3, p0, Lcom/yandex/metrica/impl/ag$a;->c:Lcom/yandex/metrica/impl/h;

    .line 278
    iput-object p4, p0, Lcom/yandex/metrica/impl/ag$a;->d:Landroid/os/Bundle;

    return-void
.end method

.method private static a(Landroid/os/Bundle;)Lcom/yandex/metrica/CounterConfiguration;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    :try_start_3
    const-string v1, "COUNTER_MIGRATION_CFG_OBJ"

    .line 351
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/CounterConfiguration;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    move-object v0, p0

    nop

    :catchall_d
    :cond_d
    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 305
    iget-object v0, p0, Lcom/yandex/metrica/impl/ag$a;->d:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/yandex/metrica/CounterConfiguration;->b(Landroid/os/Bundle;)Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    .line 306
    invoke-static {v0}, Lcom/yandex/metrica/impl/ag;->a(Lcom/yandex/metrica/CounterConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-void

    .line 310
    :cond_d
    iget-object v1, p0, Lcom/yandex/metrica/impl/ag$a;->a:Lcom/yandex/metrica/impl/ag;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ag$a;->c:Lcom/yandex/metrica/impl/h;

    iget v3, p0, Lcom/yandex/metrica/impl/ag$a;->b:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/yandex/metrica/impl/ag;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/CounterConfiguration;I)Lcom/yandex/metrica/impl/ob/r;

    move-result-object v1

    if-nez v1, :cond_1a

    return-void

    .line 318
    :cond_1a
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yandex/metrica/impl/ag;->a(Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/String;)V

    .line 320
    invoke-static {}, Lcom/yandex/metrica/impl/ag;->c()Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 322
    :try_start_26
    iget-object v3, p0, Lcom/yandex/metrica/impl/ag$a;->a:Lcom/yandex/metrica/impl/ag;

    invoke-static {v3, v0}, Lcom/yandex/metrica/impl/ag;->a(Lcom/yandex/metrica/impl/ag;Lcom/yandex/metrica/CounterConfiguration;)V

    .line 323
    iget-object v3, p0, Lcom/yandex/metrica/impl/ag$a;->a:Lcom/yandex/metrica/impl/ag;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ag$a;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 324
    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->m()Z

    move-result v5

    .line 323
    invoke-static {v3, v4, v5}, Lcom/yandex/metrica/impl/ag;->a(Lcom/yandex/metrica/impl/ag;ZZ)V

    .line 326
    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->j()Ljava/lang/String;

    move-result-object v3

    .line 1282
    iget-object v4, p0, Lcom/yandex/metrica/impl/ag$a;->d:Landroid/os/Bundle;

    const-string v5, "COUNTER_MIGRATION_CFG_OBJ"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 1283
    iget-object v4, p0, Lcom/yandex/metrica/impl/ag$a;->d:Landroid/os/Bundle;

    invoke-static {v4}, Lcom/yandex/metrica/impl/ag$a;->a(Landroid/os/Bundle;)Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v4

    if-eqz v4, :cond_8a

    .line 1284
    invoke-virtual {v4}, Lcom/yandex/metrica/CounterConfiguration;->D()Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 1285
    iget-object v5, p0, Lcom/yandex/metrica/impl/ag$a;->e:Landroid/content/Context;

    iget v6, p0, Lcom/yandex/metrica/impl/ag$a;->b:I

    .line 1288
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    .line 1285
    invoke-static {v5, v4, v6, v7}, Lcom/yandex/metrica/impl/ob/r;->a(Landroid/content/Context;Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/Integer;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/r;

    move-result-object v5

    .line 1290
    invoke-static {}, Lcom/yandex/metrica/impl/ag;->c()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5}, Lcom/yandex/metrica/impl/ob/r;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8a

    .line 1292
    new-instance v6, Lcom/yandex/metrica/CounterConfiguration;

    invoke-direct {v6, v4}, Lcom/yandex/metrica/CounterConfiguration;-><init>(Lcom/yandex/metrica/CounterConfiguration;)V

    .line 1293
    invoke-virtual {v6, v3}, Lcom/yandex/metrica/CounterConfiguration;->a(Ljava/lang/String;)V

    .line 1294
    iget-object v3, p0, Lcom/yandex/metrica/impl/ag$a;->a:Lcom/yandex/metrica/impl/ag;

    invoke-static {v3, v5, v6, v7}, Lcom/yandex/metrica/impl/ag;->a(Lcom/yandex/metrica/impl/ag;Lcom/yandex/metrica/impl/ob/r;Lcom/yandex/metrica/CounterConfiguration;Lcom/yandex/metrica/impl/h;)Lcom/yandex/metrica/impl/ob/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/t;->f()V

    .line 327
    :cond_8a
    iget-object v3, p0, Lcom/yandex/metrica/impl/ag$a;->a:Lcom/yandex/metrica/impl/ag;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ag$a;->c:Lcom/yandex/metrica/impl/h;

    invoke-static {v3, v1, v0, v4}, Lcom/yandex/metrica/impl/ag;->a(Lcom/yandex/metrica/impl/ag;Lcom/yandex/metrica/impl/ob/r;Lcom/yandex/metrica/CounterConfiguration;Lcom/yandex/metrica/impl/h;)Lcom/yandex/metrica/impl/ob/t;

    move-result-object v1

    .line 329
    invoke-static {v1}, Lcom/yandex/metrica/impl/ag;->a(Lcom/yandex/metrica/impl/ob/t;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 330
    monitor-exit v2

    return-void

    .line 334
    :cond_9a
    iget-object v3, p0, Lcom/yandex/metrica/impl/ag$a;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/yandex/metrica/impl/y;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/y;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/metrica/impl/ag$a;->c:Lcom/yandex/metrica/impl/h;

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/h;->e()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/y;->a(Landroid/location/Location;)V

    .line 336
    iget-object v3, p0, Lcom/yandex/metrica/impl/ag$a;->c:Lcom/yandex/metrica/impl/h;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/h;->c()I

    move-result v3

    invoke-static {v3}, Lcom/yandex/metrica/impl/p;->a(I)Z

    move-result v3

    if-nez v3, :cond_b8

    .line 337
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/t;->a(Lcom/yandex/metrica/CounterConfiguration;)V

    .line 340
    :cond_b8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ag$a;->c:Lcom/yandex/metrica/impl/h;

    invoke-static {v1, v0}, Lcom/yandex/metrica/impl/ag;->a(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/h;)Z

    move-result v0

    if-nez v0, :cond_c5

    .line 341
    iget-object v0, p0, Lcom/yandex/metrica/impl/ag$a;->c:Lcom/yandex/metrica/impl/h;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/t;->a(Lcom/yandex/metrica/impl/h;)V

    .line 343
    :cond_c5
    monitor-exit v2

    return-void

    :catchall_c7
    move-exception v0

    monitor-exit v2
    :try_end_c9
    .catchall {:try_start_26 .. :try_end_c9} :catchall_c7

    throw v0
.end method
