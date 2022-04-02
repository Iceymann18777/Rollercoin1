.class public Lcom/yandex/metrica/impl/utils/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Ljava/lang/String;
    .registers 4

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    if-ge v1, p0, :cond_10

    const-string v2, "?,"

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 65
    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 v1, p0, -0x1

    const-string v2, ""

    .line 66
    invoke-virtual {v0, v1, p0, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    .registers 7

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_67

    .line 1034
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 1035
    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_66

    .line 1037
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v3

    if-eqz v3, :cond_5a

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4c

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3e

    const/4 v4, 0x3

    if-eq v3, v4, :cond_34

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2a

    .line 1054
    aget-object v3, v0, v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63

    .line 1039
    :cond_2a
    aget-object v3, v0, v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_63

    .line 1051
    :cond_34
    aget-object v3, v0, v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63

    .line 1042
    :cond_3e
    aget-object v3, v0, v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_63

    .line 1045
    :cond_4c
    aget-object v3, v0, v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_63

    .line 1048
    :cond_5a
    aget-object v3, v0, v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_66
    return-void

    .line 28
    :cond_67
    invoke-static {p0, p1}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    return-void
.end method
