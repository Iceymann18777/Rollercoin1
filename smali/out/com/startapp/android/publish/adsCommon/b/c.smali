.class public Lcom/startapp/android/publish/adsCommon/b/c;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public static a(Landroid/content/Context;Ljava/util/List;ILjava/util/Set;Ljava/util/List;)Ljava/lang/Boolean;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/adsCommon/b/a;",
            ">;I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/adsCommon/b/a;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 169
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapp/android/publish/adsCommon/b/a;

    .line 170
    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/b/a;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    .line 171
    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/b/a;->b()Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_27

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 172
    :cond_27
    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/b/a;->e()I

    move-result v6

    invoke-static {p0, v5, v6}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    if-nez v3, :cond_33

    if-nez v5, :cond_37

    :cond_33
    if-eqz v3, :cond_39

    if-nez v5, :cond_39

    :cond_37
    const/4 v6, 0x1

    goto :goto_3a

    :cond_39
    const/4 v6, 0x0

    :goto_3a
    if-eqz v6, :cond_8b

    const/4 v1, 0x3

    const-string v6, "AppPresenceUtil"

    const-string v7, "in isAppPresent, skipAd is true"

    .line 176
    invoke-static {v6, v1, v7}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 177
    invoke-virtual {v2, v5}, Lcom/startapp/android/publish/adsCommon/b/a;->b(Z)V

    if-nez p2, :cond_4b

    const/4 v1, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v1, 0x0

    :goto_4c
    if-eqz v1, :cond_58

    if-nez v3, :cond_58

    .line 181
    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/b/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    :cond_58
    if-nez v1, :cond_8b

    .line 182
    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/b/a;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8b

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/b/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&isShown="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/b/a;->c()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "&appPresence="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/b/a;->d()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/startapp/android/publish/adsCommon/b/a;->a(Ljava/lang/String;)V

    .line 187
    :cond_8b
    :goto_8b
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_90
    if-eqz v1, :cond_a5

    const/4 p0, 0x0

    .line 191
    :goto_93
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_a5

    .line 192
    invoke-interface {p4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/android/publish/adsCommon/b/a;

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/adsCommon/b/a;->a(Z)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_93

    .line 196
    :cond_a5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;ILjava/util/Set;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/common/model/AdDetails;",
            ">;I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/common/model/AdDetails;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 62
    invoke-static {p0, p1, p2, p3, v0}, Lcom/startapp/android/publish/adsCommon/b/c;->a(Landroid/content/Context;Ljava/util/List;ILjava/util/Set;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;ILjava/util/Set;Z)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/common/model/AdDetails;",
            ">;I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/common/model/AdDetails;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 67
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 68
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 69
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_d9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/startapp/android/publish/common/model/AdDetails;

    .line 74
    new-instance v11, Lcom/startapp/android/publish/adsCommon/b/a;

    invoke-virtual {v9}, Lcom/startapp/android/publish/common/model/AdDetails;->getTrackingUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lcom/startapp/android/publish/common/model/AdDetails;->getAppPresencePackage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Lcom/startapp/android/publish/common/model/AdDetails;->getMinAppVersion()I

    move-result v14

    invoke-direct {v11, v12, v13, v1, v14}, Lcom/startapp/android/publish/adsCommon/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 75
    invoke-virtual {v9}, Lcom/startapp/android/publish/common/model/AdDetails;->getAppPresencePackage()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_50

    invoke-virtual {v9}, Lcom/startapp/android/publish/common/model/AdDetails;->getAppPresencePackage()Ljava/lang/String;

    move-result-object v12

    const-string v13, "!"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_50

    const/4 v12, 0x1

    goto :goto_51

    :cond_50
    const/4 v12, 0x0

    .line 76
    :goto_51
    invoke-virtual {v9}, Lcom/startapp/android/publish/common/model/AdDetails;->getAppPresencePackage()Ljava/lang/String;

    move-result-object v13

    if-eqz v12, :cond_5b

    invoke-virtual {v13, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 77
    :cond_5b
    invoke-virtual {v9}, Lcom/startapp/android/publish/common/model/AdDetails;->getMinAppVersion()I

    move-result v14

    invoke-static {v0, v13, v14}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v13

    .line 79
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v14

    invoke-virtual {v14}, Lcom/startapp/android/publish/adsCommon/b;->E()Z

    move-result v14

    if-eqz v14, :cond_77

    if-eqz v13, :cond_71

    if-eqz v12, :cond_75

    :cond_71
    if-nez v13, :cond_77

    if-eqz v12, :cond_77

    :cond_75
    const/4 v14, 0x1

    goto :goto_78

    :cond_77
    const/4 v14, 0x0

    .line 81
    :goto_78
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v15, "]"

    const-string v10, "AppPresenceUtil"

    if-eqz v14, :cond_b6

    .line 83
    invoke-virtual {v11, v13}, Lcom/startapp/android/publish/adsCommon/b/a;->b(Z)V

    .line 84
    invoke-virtual {v11, v7}, Lcom/startapp/android/publish/adsCommon/b/a;->a(Z)V

    if-nez v12, :cond_8f

    .line 86
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_8f
    invoke-virtual {v9}, Lcom/startapp/android/publish/common/model/AdDetails;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v11, p3

    invoke-interface {v11, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "App Presence:["

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/startapp/android/publish/common/model/AdDetails;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x3

    invoke-static {v10, v12, v8}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v8, 0x1

    goto :goto_bb

    :cond_b6
    move-object/from16 v11, p3

    .line 95
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :goto_bb
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "App Not Presence:["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/startapp/android/publish/common/model/AdDetails;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x3

    invoke-static {v10, v12, v9}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1e

    .line 101
    :cond_d9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v9, 0x5

    if-ge v6, v9, :cond_116

    .line 102
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v10, 0x1

    if-ne v6, v10, :cond_e9

    if-lez v1, :cond_116

    .line 103
    :cond_e9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v9, v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 104
    invoke-interface {v3, v7, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    invoke-interface {v5, v7, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 106
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_105
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_116

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/startapp/android/publish/adsCommon/b/a;

    const/4 v5, 0x1

    .line 107
    invoke-virtual {v3, v5}, Lcom/startapp/android/publish/adsCommon/b/a;->a(Z)V

    goto :goto_105

    :cond_116
    if-eqz v8, :cond_125

    .line 113
    invoke-static/range {p0 .. p0}, Lcom/startapp/android/publish/adsCommon/l;->c(Landroid/content/Context;)V

    if-eqz p4, :cond_125

    .line 117
    new-instance v1, Lcom/startapp/android/publish/adsCommon/b/b;

    invoke-direct {v1, v0, v4}, Lcom/startapp/android/publish/adsCommon/b/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/b/b;->a()V

    :cond_125
    return-object v2
.end method

.method public static a(Ljava/lang/String;I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/adsCommon/b/a;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "@tracking@"

    .line 128
    invoke-static {p0, v3, v3}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    if-eqz v3, :cond_16

    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :cond_16
    new-array v3, v1, [Ljava/lang/String;

    const-string v5, "@appPresencePackage@"

    .line 134
    invoke-static {p0, v5, v5}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_24

    .line 136
    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :cond_24
    new-array v5, v1, [Ljava/lang/String;

    const-string v6, "@minAppVersion@"

    .line 140
    invoke-static {p0, v6, v6}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 142
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    :cond_32
    const/4 p0, 0x0

    .line 146
    :goto_33
    array-length v4, v3

    if-ge p0, v4, :cond_59

    .line 147
    new-instance v4, Lcom/startapp/android/publish/adsCommon/b/a;

    array-length v6, v2

    if-le v6, p0, :cond_3e

    aget-object v6, v2, p0

    goto :goto_3f

    :cond_3e
    const/4 v6, 0x0

    :goto_3f
    aget-object v7, v3, p0

    array-length v8, v5

    if-le v8, p0, :cond_4f

    aget-object v8, v5, p0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_50

    :cond_4f
    const/4 v8, 0x0

    :goto_50
    invoke-direct {v4, v6, v7, p1, v8}, Lcom/startapp/android/publish/adsCommon/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_33

    .line 150
    :cond_59
    :goto_59
    array-length v3, v2

    if-ge p0, v3, :cond_7a

    .line 151
    new-instance v3, Lcom/startapp/android/publish/adsCommon/b/a;

    aget-object v4, v2, p0

    array-length v6, v5

    if-le v6, p0, :cond_6e

    aget-object v6, v5, p0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_6f

    :cond_6e
    const/4 v6, 0x0

    :goto_6f
    const-string v7, ""

    invoke-direct {v3, v4, v7, p1, v6}, Lcom/startapp/android/publish/adsCommon/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_59

    :cond_7a
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/Ad;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3b

    .line 37
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 38
    instance-of v2, p1, Lcom/startapp/android/publish/adsCommon/e;

    if-eqz v2, :cond_24

    .line 39
    check-cast p1, Lcom/startapp/android/publish/adsCommon/e;

    .line 40
    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/e;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/startapp/android/publish/adsCommon/b/c;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-static {p0, p1, v0, v1, v2}, Lcom/startapp/android/publish/adsCommon/b/c;->a(Landroid/content/Context;Ljava/util/List;ILjava/util/Set;Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 43
    :cond_24
    instance-of v2, p1, Lcom/startapp/android/publish/adsCommon/h;

    if-eqz v2, :cond_3b

    .line 44
    check-cast p1, Lcom/startapp/android/publish/adsCommon/h;

    .line 45
    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/h;->d()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, v0, v1, v0}, Lcom/startapp/android/publish/adsCommon/b/c;->a(Landroid/content/Context;Ljava/util/List;ILjava/util/Set;Z)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 46
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_3b

    :cond_3a
    const/4 v0, 0x1

    :cond_3b
    return v0
.end method
