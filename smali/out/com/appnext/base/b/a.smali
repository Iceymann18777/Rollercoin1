.class public final Lcom/appnext/base/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Landroid/os/PersistableBundle;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 18
    :cond_4
    :try_start_4
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 19
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 20
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1035
    instance-of v5, v4, Landroid/os/PersistableBundle;

    if-nez v5, :cond_48

    instance-of v5, v4, Ljava/lang/Integer;

    if-nez v5, :cond_48

    instance-of v5, v4, [I

    if-nez v5, :cond_48

    instance-of v5, v4, Ljava/lang/Long;

    if-nez v5, :cond_48

    instance-of v5, v4, [J

    if-nez v5, :cond_48

    instance-of v5, v4, Ljava/lang/Double;

    if-nez v5, :cond_48

    instance-of v5, v4, [D

    if-nez v5, :cond_48

    instance-of v5, v4, Ljava/lang/String;

    if-nez v5, :cond_48

    instance-of v5, v4, [Ljava/lang/String;

    if-eqz v5, :cond_46

    goto :goto_48

    :cond_46
    const/4 v5, 0x0

    goto :goto_49

    :cond_48
    :goto_48
    const/4 v5, 0x1

    :goto_49
    if-eqz v5, :cond_11

    if-eqz v4, :cond_e9

    .line 1050
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_5b

    .line 1051
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_11

    .line 1052
    :cond_5b
    instance-of v5, v4, [I

    if-eqz v5, :cond_67

    .line 1053
    check-cast v4, [I

    check-cast v4, [I

    invoke-virtual {v1, v3, v4}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_11

    .line 1054
    :cond_67
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_75

    .line 1055
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_11

    .line 1056
    :cond_75
    instance-of v5, v4, [J

    if-eqz v5, :cond_81

    .line 1057
    check-cast v4, [J

    check-cast v4, [J

    invoke-virtual {v1, v3, v4}, Landroid/os/PersistableBundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_11

    .line 1058
    :cond_81
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_8f

    .line 1059
    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_11

    .line 1060
    :cond_8f
    instance-of v5, v4, [D

    if-eqz v5, :cond_9c

    .line 1061
    check-cast v4, [D

    check-cast v4, [D

    invoke-virtual {v1, v3, v4}, Landroid/os/PersistableBundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto/16 :goto_11

    .line 1062
    :cond_9c
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_a7

    .line 1063
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1064
    :cond_a7
    instance-of v5, v4, [Ljava/lang/String;

    if-eqz v5, :cond_b4

    .line 1065
    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1066
    :cond_b4
    instance-of v3, v4, Landroid/os/PersistableBundle;

    if-eqz v3, :cond_bf

    .line 1067
    check-cast v4, Landroid/os/PersistableBundle;

    invoke-virtual {v1, v4}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    goto/16 :goto_11

    .line 1069
    :cond_bf
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Objects of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can not be put into a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/os/BaseBundle;

    .line 1070
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1049
    :cond_e9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to determine type of null values"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_f1
    .catchall {:try_start_4 .. :try_end_f1} :catchall_f2

    :cond_f1
    return-object v1

    :catchall_f2
    return-object v0
.end method

.method private static a(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_9a

    .line 50
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_10

    .line 51
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-void

    .line 52
    :cond_10
    instance-of v0, p2, [I

    if-eqz v0, :cond_1c

    .line 53
    check-cast p2, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    return-void

    .line 54
    :cond_1c
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_2a

    .line 55
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    return-void

    .line 56
    :cond_2a
    instance-of v0, p2, [J

    if-eqz v0, :cond_36

    .line 57
    check-cast p2, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->putLongArray(Ljava/lang/String;[J)V

    return-void

    .line 58
    :cond_36
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_44

    .line 59
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    return-void

    .line 60
    :cond_44
    instance-of v0, p2, [D

    if-eqz v0, :cond_50

    .line 61
    check-cast p2, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->putDoubleArray(Ljava/lang/String;[D)V

    return-void

    .line 62
    :cond_50
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_5a

    .line 63
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 64
    :cond_5a
    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_66

    .line 65
    check-cast p2, [Ljava/lang/String;

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 66
    :cond_66
    instance-of p1, p2, Landroid/os/PersistableBundle;

    if-eqz p1, :cond_70

    .line 67
    check-cast p2, Landroid/os/PersistableBundle;

    invoke-virtual {p0, p2}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    return-void

    .line 69
    :cond_70
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Objects of type "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " can not be put into a "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p2, Landroid/os/BaseBundle;

    .line 70
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_9a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to determine type of null values"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Ljava/lang/Object;)Z
    .registers 2

    .line 35
    instance-of v0, p0, Landroid/os/PersistableBundle;

    if-nez v0, :cond_27

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_27

    instance-of v0, p0, [I

    if-nez v0, :cond_27

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_27

    instance-of v0, p0, [J

    if-nez v0, :cond_27

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_27

    instance-of v0, p0, [D

    if-nez v0, :cond_27

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_27

    instance-of p0, p0, [Ljava/lang/String;

    if-eqz p0, :cond_25

    goto :goto_27

    :cond_25
    const/4 p0, 0x0

    return p0

    :cond_27
    :goto_27
    const/4 p0, 0x1

    return p0
.end method
