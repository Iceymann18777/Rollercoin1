.class public Lcom/startapp/android/publish/adsCommon/Utils/d;
.super Lcom/startapp/android/publish/adsCommon/Utils/e;
.source "StartAppSDK"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/adsCommon/Utils/NameValueObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/Utils/e;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/Utils/d;->a:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/Utils/d;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;ZZ)V
    .registers 7

    if-eqz p3, :cond_22

    if-eqz p2, :cond_5

    goto :goto_22

    .line 24
    :cond_5
    new-instance p2, Lcom/startapp/common/e;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Required key: ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] is missing"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/startapp/common/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_22
    :goto_22
    if-eqz p2, :cond_6d

    .line 27
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 29
    :try_start_30
    new-instance v0, Lcom/startapp/android/publish/adsCommon/Utils/NameValueObject;

    invoke-direct {v0}, Lcom/startapp/android/publish/adsCommon/Utils/NameValueObject;-><init>()V

    .line 30
    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/adsCommon/Utils/NameValueObject;->setName(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p4, :cond_44

    const-string p4, "UTF-8"

    .line 33
    invoke-static {p1, p4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    :cond_44
    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/adsCommon/Utils/NameValueObject;->setValue(Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/Utils/d;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_30 .. :try_end_4c} :catch_4d

    goto :goto_6d

    :catch_4d
    move-exception p1

    if-nez p3, :cond_51

    goto :goto_6d

    .line 39
    :cond_51
    new-instance p3, Lcom/startapp/common/e;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed encoding value: ["

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/startapp/common/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_6d
    :goto_6d
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Set;ZZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_22

    if-eqz p2, :cond_6

    goto :goto_22

    .line 48
    :cond_6
    new-instance p2, Lcom/startapp/common/e;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Required key: ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] is missing"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Lcom/startapp/common/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_22
    :goto_22
    if-eqz p2, :cond_7d

    .line 52
    new-instance v1, Lcom/startapp/android/publish/adsCommon/Utils/NameValueObject;

    invoke-direct {v1}, Lcom/startapp/android/publish/adsCommon/Utils/NameValueObject;-><init>()V

    .line 53
    invoke-virtual {v1, p1}, Lcom/startapp/android/publish/adsCommon/Utils/NameValueObject;->setName(Ljava/lang/String;)V

    .line 54
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 56
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz p4, :cond_4c

    :try_start_43
    const-string v4, "UTF-8"

    .line 58
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4c

    :catch_4a
    nop

    goto :goto_35

    :cond_4c
    :goto_4c
    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_43 .. :try_end_4f} :catch_4a

    goto :goto_35

    :cond_50
    if-eqz p3, :cond_75

    .line 62
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p3

    if-eqz p3, :cond_59

    goto :goto_75

    .line 63
    :cond_59
    new-instance p1, Lcom/startapp/common/e;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "failed encoding value: ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Lcom/startapp/common/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 65
    :cond_75
    :goto_75
    invoke-virtual {v1, p1}, Lcom/startapp/android/publish/adsCommon/Utils/NameValueObject;->setValueSet(Ljava/util/Set;)V

    .line 67
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/Utils/d;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/Utils/d;->a:Ljava/util/List;

    if-nez v1, :cond_e

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    const/16 v1, 0x3f

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/Utils/d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapp/android/publish/adsCommon/Utils/NameValueObject;

    .line 82
    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/Utils/NameValueObject;->getValue()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x26

    const/16 v5, 0x3d

    if-eqz v3, :cond_44

    .line 83
    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/Utils/NameValueObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/Utils/NameValueObject;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 84
    :cond_44
    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/Utils/NameValueObject;->getValueSet()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 85
    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/Utils/NameValueObject;->getValueSet()Ljava/util/Set;

    move-result-object v3

    if-nez v3, :cond_51

    goto :goto_19

    .line 89
    :cond_51
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_55
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 90
    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/Utils/NameValueObject;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_55

    .line 96
    :cond_72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_81

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 100
    :cond_81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
