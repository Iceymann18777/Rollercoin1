.class public Lcom/yandex/metrica/impl/ob/ew;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/fk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ew$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ew$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/fd;)V
    .registers 4

    .line 16
    new-instance v0, Lcom/yandex/metrica/impl/ob/fe;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/fe;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/yandex/metrica/impl/ob/ew;-><init>(Lcom/yandex/metrica/impl/ob/fe;Lcom/yandex/metrica/impl/ob/fd;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/fe;Lcom/yandex/metrica/impl/ob/fd;)V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1164
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/fd;->d()Lcom/yandex/metrica/impl/ob/fj;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 21
    new-instance v0, Lcom/yandex/metrica/impl/ob/ew$a;

    invoke-direct {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ew$a;-><init>(Lcom/yandex/metrica/impl/ob/fe;Lcom/yandex/metrica/impl/ob/fd;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ew;->a:Lcom/yandex/metrica/impl/ob/ew$a;

    return-void

    .line 1165
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "UUID provider must be set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b([Ljava/security/cert/X509Certificate;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 2133
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ew;->a:Lcom/yandex/metrica/impl/ob/ew$a;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ew$a;->a(Lcom/yandex/metrica/impl/ob/ew$a;)Lcom/yandex/metrica/impl/ob/fc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/fc;->a([Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 83
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ew;->d([Ljava/security/cert/X509Certificate;)Z

    move-result v0

    .line 84
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ew;->a:Lcom/yandex/metrica/impl/ob/ew$a;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/ew$a;->c(Lcom/yandex/metrica/impl/ob/ew$a;)Lcom/yandex/metrica/impl/ob/eq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/eq;->e()V

    goto :goto_36

    .line 2136
    :cond_1a
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "System doesn\'t trust certificate chain"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_22
    .catch Lcom/yandex/metrica/impl/ob/el; {:try_start_0 .. :try_end_22} :catch_22

    :catch_22
    nop

    .line 88
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ew;->c([Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 2159
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ew;->a:Lcom/yandex/metrica/impl/ob/ew$a;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ew$a;->b(Lcom/yandex/metrica/impl/ob/ew$a;)Lcom/yandex/metrica/impl/ob/eu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/eu;->a([Ljava/security/cert/X509Certificate;)V

    .line 2160
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ew;->d([Ljava/security/cert/X509Certificate;)Z

    move-result v0

    :cond_36
    :goto_36
    return v0
.end method

.method private c([Ljava/security/cert/X509Certificate;)Z
    .registers 5

    .line 97
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ew;->a:Lcom/yandex/metrica/impl/ob/ew$a;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ew$a;->c(Lcom/yandex/metrica/impl/ob/ew$a;)Lcom/yandex/metrica/impl/ob/eq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/eq;->d()Lcom/yandex/metrica/impl/ob/fh;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 99
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/fh;->a()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 103
    :try_start_13
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ew;->d([Ljava/security/cert/X509Certificate;)Z

    move-result v2
    :try_end_17
    .catch Ljava/security/cert/CertificateException; {:try_start_13 .. :try_end_17} :catch_20
    .catchall {:try_start_13 .. :try_end_17} :catchall_1e

    if-eqz v2, :cond_20

    .line 113
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x1

    return p1

    :catchall_1e
    move-exception p1

    goto :goto_32

    .line 107
    :catch_20
    :cond_20
    :try_start_20
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/fh;->b()Z

    move-result v0
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_1e

    if-eqz v0, :cond_2e

    .line 109
    :try_start_26
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ew;->d([Ljava/security/cert/X509Certificate;)Z

    move-result p1
    :try_end_2a
    .catch Ljava/security/cert/CertificateException; {:try_start_26 .. :try_end_2a} :catch_2e
    .catchall {:try_start_26 .. :try_end_2a} :catchall_1e

    .line 113
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catch_2e
    :cond_2e
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_36

    :goto_32
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_36
    :goto_36
    const/4 p1, 0x0

    return p1
.end method

.method private d([Ljava/security/cert/X509Certificate;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 3124
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ew;->a:Lcom/yandex/metrica/impl/ob/ew$a;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ew$a;->d(Lcom/yandex/metrica/impl/ob/ew$a;)[Lcom/yandex/metrica/impl/ob/er;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    const/4 v4, 0x1

    if-ge v3, v1, :cond_19

    aget-object v5, v0, v3

    .line 3125
    invoke-interface {v5, p1}, Lcom/yandex/metrica/impl/ob/er;->b([Ljava/security/cert/X509Certificate;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v0, 0x1

    goto :goto_1a

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-nez v0, :cond_41

    .line 3150
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ew;->a:Lcom/yandex/metrica/impl/ob/ew$a;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ew$a;->d(Lcom/yandex/metrica/impl/ob/ew$a;)[Lcom/yandex/metrica/impl/ob/er;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v1, :cond_39

    aget-object v5, v0, v3

    .line 3151
    invoke-interface {v5, p1}, Lcom/yandex/metrica/impl/ob/er;->a([Ljava/security/cert/X509Certificate;)Z

    move-result v5

    if-nez v5, :cond_31

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 3152
    :cond_31
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string v0, "There is blacklisted certificate in chain"

    invoke-direct {p1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_39
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ew;->e([Ljava/security/cert/X509Certificate;)Z

    move-result p1

    if-eqz p1, :cond_40

    goto :goto_41

    :cond_40
    return v2

    :cond_41
    :goto_41
    return v4
.end method

.method private e([Ljava/security/cert/X509Certificate;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ew;->a:Lcom/yandex/metrica/impl/ob/ew$a;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ew$a;->d(Lcom/yandex/metrica/impl/ob/ew$a;)[Lcom/yandex/metrica/impl/ob/er;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    .line 142
    invoke-interface {v3, p1}, Lcom/yandex/metrica/impl/ob/er;->c([Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 146
    :cond_17
    new-instance v0, Lcom/yandex/metrica/impl/ob/el;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ff;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ew;->a:Lcom/yandex/metrica/impl/ob/ew$a;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/ew$a;->b(Lcom/yandex/metrica/impl/ob/ew$a;)Lcom/yandex/metrica/impl/ob/eu;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/ff;-><init>([Ljava/security/cert/X509Certificate;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/el;-><init>(Lcom/yandex/metrica/impl/ob/ff;)V

    goto :goto_28

    :goto_27
    throw v0

    :goto_28
    goto :goto_27
.end method


# virtual methods
.method a([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .registers 10

    const/4 v0, 0x0

    move-object v2, p1

    const/4 v1, 0x0

    .line 176
    :goto_3
    array-length v3, v2

    if-ge v1, v3, :cond_45

    add-int/lit8 v3, v1, 0x1

    move v4, v3

    .line 183
    :goto_9
    array-length v5, v2

    const/4 v6, 0x1

    if-ge v4, v5, :cond_36

    .line 184
    aget-object v5, v2, v1

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    aget-object v7, v2, v4

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    if-eq v4, v3, :cond_37

    if-ne v2, p1, :cond_2a

    .line 190
    invoke-virtual {p1}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [Ljava/security/cert/X509Certificate;

    .line 192
    :cond_2a
    aget-object v1, v2, v4

    .line 193
    aget-object v5, v2, v3

    aput-object v5, v2, v4

    .line 194
    aput-object v1, v2, v3

    goto :goto_37

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_36
    const/4 v6, 0x0

    :cond_37
    :goto_37
    if-nez v6, :cond_43

    .line 204
    array-length p1, v2

    if-eq v3, p1, :cond_45

    .line 205
    new-array p1, v3, [Ljava/security/cert/X509Certificate;

    .line 206
    invoke-static {v2, v0, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, p1

    goto :goto_45

    :cond_43
    move v1, v3

    goto :goto_3

    :cond_45
    :goto_45
    return-object v2
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 26
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p1, :cond_20

    .line 31
    array-length v0, p1

    if-eqz v0, :cond_20

    if-eqz p2, :cond_20

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_20

    .line 34
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ew;->a([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ew;->b([Ljava/security/cert/X509Certificate;)Z

    move-result p1

    if-eqz p1, :cond_18

    return-void

    .line 37
    :cond_18
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Can\'t trust certificate chain"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null or zero-length parameter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ew;->a:Lcom/yandex/metrica/impl/ob/ew$a;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ew$a;->a(Lcom/yandex/metrica/impl/ob/ew$a;)Lcom/yandex/metrica/impl/ob/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/fc;->a()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
