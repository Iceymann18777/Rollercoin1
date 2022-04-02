.class public abstract Lcom/yandex/metrica/impl/ob/dd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lcom/yandex/metrica/impl/ob/dk;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Landroid/content/SharedPreferences;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "UNDEFINED_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/dd;->c:Lcom/yandex/metrica/impl/ob/dk;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dd;->d:Ljava/util/Map;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/dd;->e:Z

    .line 37
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/dd;->a:Ljava/lang/String;

    .line 38
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/dd;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dd;->b:Landroid/content/SharedPreferences;

    .line 39
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dd;->h()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 49
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dd;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/dl;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/dd;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/yandex/metrica/impl/ob/dd;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 53
    monitor-enter p0

    if-eqz p2, :cond_8

    .line 55
    :try_start_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dd;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_8
    monitor-exit p0

    return-object p0

    :catchall_a
    move-exception p1

    .line 59
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method protected abstract f()Ljava/lang/String;
.end method

.method protected h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/dd;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/yandex/metrica/impl/ob/dd;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 63
    monitor-enter p0

    .line 64
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dd;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    monitor-exit p0

    return-object p0

    :catchall_8
    move-exception p1

    .line 66
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method protected h()V
    .registers 4

    .line 43
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/dd;->c:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dd;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected i()Lcom/yandex/metrica/impl/ob/dd;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/yandex/metrica/impl/ob/dd;",
            ">()TT;"
        }
    .end annotation

    .line 70
    monitor-enter p0

    const/4 v0, 0x1

    .line 71
    :try_start_2
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/dd;->e:Z

    .line 72
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dd;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 73
    monitor-exit p0

    return-object p0

    :catchall_b
    move-exception v0

    .line 74
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_b

    throw v0
.end method

.method protected j()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public k()V
    .registers 7

    .line 82
    monitor-enter p0

    .line 1090
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dd;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1092
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/dd;->e:Z

    if-eqz v1, :cond_12

    .line 1093
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1122
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_78

    .line 1099
    :cond_12
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dd;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1100
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1101
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_38

    .line 1104
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1c

    .line 1105
    :cond_38
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_42

    .line 1106
    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1c

    .line 1107
    :cond_42
    instance-of v4, v2, Ljava/lang/Long;

    if-eqz v4, :cond_50

    .line 1108
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1c

    .line 1109
    :cond_50
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_5e

    .line 1110
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1c

    .line 1111
    :cond_5e
    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_6c

    .line 1112
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1c

    :cond_6c
    if-nez v2, :cond_6f

    goto :goto_1c

    .line 1114
    :cond_6f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2122
    :cond_75
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 84
    :goto_78
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dd;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/dd;->e:Z

    .line 86
    monitor-exit p0

    return-void

    :catchall_82
    move-exception v0

    monitor-exit p0
    :try_end_84
    .catchall {:try_start_1 .. :try_end_84} :catchall_82

    goto :goto_86

    :goto_85
    throw v0

    :goto_86
    goto :goto_85
.end method
