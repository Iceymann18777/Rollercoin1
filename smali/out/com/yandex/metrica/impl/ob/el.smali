.class public Lcom/yandex/metrica/impl/ob/el;
.super Ljava/security/cert/CertificateException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ff;)V
    .registers 4

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "There is not pinned certificates among chain "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ff;->a()[Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/el;->a([Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static a([Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .registers 7

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_2c

    aget-object v3, p0, v2

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ISSUER="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 20
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
