.class public Lcom/yandex/metrica/impl/ob/dv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/dw;


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/impl/ob/du;",
            "Lcom/yandex/metrica/IIdentifierCallback$Reason;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/yandex/metrica/impl/ay;

.field private final c:Lcom/yandex/metrica/impl/ob/dx;

.field private final d:Lcom/yandex/metrica/impl/ob/bz;

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/IIdentifierCallback;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/IIdentifierCallback;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lcom/yandex/metrica/impl/ob/dv$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/dv$1;-><init>()V

    .line 34
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/dv;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ay;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/bz;)V
    .registers 5

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dv;->e:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dv;->f:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dv;->g:Ljava/util/Map;

    .line 61
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dv;->b:Lcom/yandex/metrica/impl/ay;

    .line 62
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/dv;->d:Lcom/yandex/metrica/impl/ob/bz;

    .line 63
    new-instance p1, Lcom/yandex/metrica/impl/ob/dx;

    invoke-direct {p1, p3, p2}, Lcom/yandex/metrica/impl/ob/dx;-><init>(Lcom/yandex/metrica/impl/ob/bz;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dv;->c:Lcom/yandex/metrica/impl/ob/dx;

    .line 64
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dv;->e()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dv;->c:Lcom/yandex/metrica/impl/ob/dx;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dx;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 7

    .line 123
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dv;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dv;->c:Lcom/yandex/metrica/impl/ob/dx;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/dx;->a(Landroid/os/Bundle;)V

    .line 125
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/dv;->c:Lcom/yandex/metrica/impl/ob/dx;

    .line 2029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 125
    invoke-virtual {p1, v1, v2}, Lcom/yandex/metrica/impl/ob/dx;->a(J)V

    .line 126
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    .line 128
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dv;->e()V

    return-void

    :catchall_19
    move-exception p1

    .line 126
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dv;->b:Lcom/yandex/metrica/impl/ay;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ay;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dv;->c:Lcom/yandex/metrica/impl/ob/dx;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dx;->b()Ljava/util/List;

    move-result-object v0

    .line 140
    invoke-static {p1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 141
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_34

    .line 142
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/dv;->c:Lcom/yandex/metrica/impl/ob/dx;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/dx;->a(Ljava/util/List;)V

    .line 143
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/dv;->b:Lcom/yandex/metrica/impl/ay;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ay;->a(Ljava/util/List;)V

    return-void

    .line 145
    :cond_1e
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 146
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dv;->c:Lcom/yandex/metrica/impl/ob/dx;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/dx;->a(Ljava/util/List;)V

    .line 147
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dv;->b:Lcom/yandex/metrica/impl/ay;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ay;->a(Ljava/util/List;)V

    return-void

    .line 149
    :cond_2f
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/dv;->b:Lcom/yandex/metrica/impl/ay;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ay;->a(Ljava/util/List;)V

    :cond_34
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3061
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_6c

    .line 3063
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3064
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3077
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_43

    const-string v3, ":"

    .line 3078
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_43

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_43

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_43

    const/4 v2, 0x1

    goto :goto_44

    :cond_43
    const/4 v2, 0x0

    :goto_44
    if-eqz v2, :cond_f

    .line 3064
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4073
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5d

    const-wide/16 v6, -0x1

    invoke-static {v2, v6, v7}, Lcom/yandex/metrica/impl/utils/i;->a(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v8, v2, v6

    if-eqz v8, :cond_5d

    goto :goto_5e

    :cond_5d
    const/4 v4, 0x0

    :goto_5e
    if-eqz v4, :cond_f

    .line 3065
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 156
    :cond_6c
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/dv;->b:Lcom/yandex/metrica/impl/ay;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ay;->a(Ljava/util/Map;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dv;->d:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bz;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 6

    .line 221
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/du;->b(Landroid/os/Bundle;)Lcom/yandex/metrica/impl/ob/du;

    move-result-object p1

    .line 4226
    sget-object v0, Lcom/yandex/metrica/impl/ob/dv;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/IIdentifierCallback$Reason;

    .line 4228
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 4229
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 4231
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dv;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 4232
    :try_start_19
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/dv;->f:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 4233
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/dv;->g:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 4235
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/dv;->f:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 4236
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/dv;->g:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 4242
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_19 .. :try_end_2e} :catchall_65

    .line 4244
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/metrica/IIdentifierCallback;

    .line 4245
    invoke-interface {v3, p1}, Lcom/yandex/metrica/IIdentifierCallback;->onRequestError(Lcom/yandex/metrica/IIdentifierCallback$Reason;)V

    goto :goto_36

    .line 4248
    :cond_46
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/metrica/IIdentifierCallback;

    .line 4249
    invoke-interface {v3, p1}, Lcom/yandex/metrica/IIdentifierCallback;->onRequestError(Lcom/yandex/metrica/IIdentifierCallback$Reason;)V

    goto :goto_4e

    .line 4252
    :cond_5e
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4253
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    return-void

    :catchall_65
    move-exception p1

    .line 4242
    :try_start_66
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    goto :goto_69

    :goto_68
    throw p1

    :goto_69
    goto :goto_68
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dv;->c:Lcom/yandex/metrica/impl/ob/dx;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dx;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dv;->c:Lcom/yandex/metrica/impl/ob/dx;

    sget-object v1, Lcom/yandex/metrica/impl/ob/dx$a;->c:Lcom/yandex/metrica/impl/ob/dx$a;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/dx;->a(Lcom/yandex/metrica/impl/ob/dx$a;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dv;->c:Lcom/yandex/metrica/impl/ob/dx;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dx;->a()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2119
    :cond_12
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dv;->b:Lcom/yandex/metrica/impl/ay;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ay;->c()V

    :cond_17
    return-void
.end method

.method e()V
    .registers 8

    .line 175
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 176
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 178
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    .line 179
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 181
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/dv;->e:Ljava/lang/Object;

    monitor-enter v4

    .line 182
    :try_start_17
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/dv;->c:Lcom/yandex/metrica/impl/ob/dx;

    sget-object v6, Lcom/yandex/metrica/impl/ob/dx$a;->a:Lcom/yandex/metrica/impl/ob/dx$a;

    invoke-virtual {v5, v6}, Lcom/yandex/metrica/impl/ob/dx;->a(Lcom/yandex/metrica/impl/ob/dx$a;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 183
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/dv;->f:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 184
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/dv;->f:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 185
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/dv;->c:Lcom/yandex/metrica/impl/ob/dx;

    invoke-virtual {v5, v1}, Lcom/yandex/metrica/impl/ob/dx;->b(Ljava/util/Map;)V

    .line 193
    :cond_30
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/dv;->c:Lcom/yandex/metrica/impl/ob/dx;

    sget-object v6, Lcom/yandex/metrica/impl/ob/dx$a;->c:Lcom/yandex/metrica/impl/ob/dx$a;

    invoke-virtual {v5, v6}, Lcom/yandex/metrica/impl/ob/dx;->a(Lcom/yandex/metrica/impl/ob/dx$a;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 194
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/dv;->g:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 195
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/dv;->g:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 196
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/dv;->c:Lcom/yandex/metrica/impl/ob/dx;

    invoke-virtual {v5, v3}, Lcom/yandex/metrica/impl/ob/dx;->a(Ljava/util/Map;)V

    .line 203
    :cond_49
    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_17 .. :try_end_4a} :catchall_91

    .line 205
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_52
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/metrica/IIdentifierCallback;

    .line 206
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v5, v6}, Lcom/yandex/metrica/IIdentifierCallback;->onReceive(Ljava/util/Map;)V

    goto :goto_52

    .line 209
    :cond_67
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_84

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/metrica/IIdentifierCallback;

    .line 210
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v5, v6}, Lcom/yandex/metrica/IIdentifierCallback;->onReceive(Ljava/util/Map;)V

    goto :goto_6f

    .line 213
    :cond_84
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 214
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 216
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 217
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    return-void

    :catchall_91
    move-exception v0

    .line 203
    :try_start_92
    monitor-exit v4
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    goto :goto_95

    :goto_94
    throw v0

    :goto_95
    goto :goto_94
.end method
