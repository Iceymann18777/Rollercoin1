.class public final Lcom/yandex/metrica/c$a$c;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field private static volatile d:[Lcom/yandex/metrica/c$a$c;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2312
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 2313
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$c;->e()Lcom/yandex/metrica/c$a$c;

    return-void
.end method

.method public static d()[Lcom/yandex/metrica/c$a$c;
    .registers 2

    .line 2295
    sget-object v0, Lcom/yandex/metrica/c$a$c;->d:[Lcom/yandex/metrica/c$a$c;

    if-nez v0, :cond_15

    .line 2296
    sget-object v0, Lcom/yandex/metrica/impl/ob/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2298
    :try_start_7
    sget-object v1, Lcom/yandex/metrica/c$a$c;->d:[Lcom/yandex/metrica/c$a$c;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/yandex/metrica/c$a$c;

    .line 2299
    sput-object v1, Lcom/yandex/metrica/c$a$c;->d:[Lcom/yandex/metrica/c$a$c;

    .line 2301
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 2303
    :cond_15
    :goto_15
    sget-object v0, Lcom/yandex/metrica/c$a$c;->d:[Lcom/yandex/metrica/c$a$c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2326
    iget-object v0, p0, Lcom/yandex/metrica/c$a$c;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 2327
    iget-object v0, p0, Lcom/yandex/metrica/c$a$c;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 2328
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method protected c()I
    .registers 4

    .line 2333
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 2334
    iget-object v1, p0, Lcom/yandex/metrica/c$a$c;->b:Ljava/lang/String;

    const/4 v2, 0x1

    .line 2335
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2336
    iget-object v1, p0, Lcom/yandex/metrica/c$a$c;->c:Ljava/lang/String;

    const/4 v2, 0x2

    .line 2337
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public e()Lcom/yandex/metrica/c$a$c;
    .registers 2

    const-string v0, ""

    .line 2317
    iput-object v0, p0, Lcom/yandex/metrica/c$a$c;->b:Ljava/lang/String;

    .line 2318
    iput-object v0, p0, Lcom/yandex/metrica/c$a$c;->c:Ljava/lang/String;

    const/4 v0, -0x1

    .line 2319
    iput v0, p0, Lcom/yandex/metrica/c$a$c;->a:I

    return-object p0
.end method
