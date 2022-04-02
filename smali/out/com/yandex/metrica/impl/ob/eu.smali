.class Lcom/yandex/metrica/impl/ob/eu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/yandex/metrica/impl/ob/ek;

.field private final d:Ljava/util/concurrent/locks/Lock;

.field private final e:Ljava/util/concurrent/locks/Lock;

.field private final f:Ljava/util/concurrent/locks/Condition;

.field private g:Lcom/yandex/metrica/impl/ob/ff;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const-class v0, Lcom/yandex/metrica/impl/ob/eu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/eu;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/fb;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/eu;->b:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/ob/eo;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/eo;-><init>(Lcom/yandex/metrica/impl/ob/fb;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/eu;->c:Lcom/yandex/metrica/impl/ob/ek;

    .line 29
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/eu;->d:Ljava/util/concurrent/locks/Lock;

    .line 30
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/eu;->e:Ljava/util/concurrent/locks/Lock;

    .line 31
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/eu;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/eu;->f:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method a([Ljava/security/cert/X509Certificate;)V
    .registers 5

    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eu;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1114
    :try_start_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eu;->c:Lcom/yandex/metrica/impl/ob/ek;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ek;->a([Ljava/security/cert/X509Certificate;)Z

    move-result v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_5e

    if-eqz v0, :cond_13

    .line 56
    :cond_d
    :goto_d
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/eu;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 48
    :cond_13
    :try_start_13
    new-instance v0, Lcom/yandex/metrica/impl/ob/ff;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/ff;-><init>([Ljava/security/cert/X509Certificate;)V

    .line 49
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/eu;->g:Lcom/yandex/metrica/impl/ob/ff;

    const/4 p1, 0x0

    .line 2062
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eu;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    const/4 p1, 0x1

    goto :goto_21

    :cond_2c
    if-eqz p1, :cond_d

    .line 52
    sget-object p1, Lcom/yandex/metrica/impl/ob/eu;->a:Ljava/lang/String;

    const-string v0, "waiting for trust issue resolve"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/eu;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_3a
    .catchall {:try_start_13 .. :try_end_3a} :catchall_5e

    .line 2100
    :catch_3a
    :goto_3a
    :try_start_3a
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/eu;->g:Lcom/yandex/metrica/impl/ob/ff;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ff;->b()Z

    move-result p1
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_57

    if-nez p1, :cond_51

    .line 2102
    :try_start_42
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/eu;->f:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v0, 0x7530

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 2103
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/eu;->g:Lcom/yandex/metrica/impl/ob/ff;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ff;->c()V
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_50} :catch_3a
    .catchall {:try_start_42 .. :try_end_50} :catchall_57

    goto :goto_3a

    .line 2109
    :cond_51
    :try_start_51
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/eu;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_d

    :catchall_57
    move-exception p1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eu;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
    :try_end_5e
    .catchall {:try_start_51 .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception p1

    .line 56
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eu;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_66

    :goto_65
    throw p1

    :goto_66
    goto :goto_65
.end method
