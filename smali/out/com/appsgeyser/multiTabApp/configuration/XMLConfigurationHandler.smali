.class public Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XMLConfigurationHandler.java"


# instance fields
.field private _currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

.field private builder:Ljava/lang/StringBuilder;

.field private current2ndParentTag:Ljava/lang/String;

.field private currentParentTag:Ljava/lang/String;

.field private inInjectJsTag:Ljava/lang/Boolean;

.field private scriptTagsFound:Ljava/lang/Boolean;

.field private webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

.field private widgetsController:Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;)V
    .registers 4

    .line 112
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->current2ndParentTag:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->inInjectJsTag:Ljava/lang/Boolean;

    .line 30
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->scriptTagsFound:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    .line 113
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    .line 114
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->widgetsController:Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 122
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 123
    invoke-static {p1, p2, p3}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_16

    .line 125
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 205
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fullScreenMode"

    .line 207
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const-string v0, ""

    const/4 v1, 0x0

    .line 257
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz p3, :cond_16

    .line 208
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->current2ndParentTag:Ljava/lang/String;

    goto/16 :goto_6bb

    :cond_16
    const-string p3, "registeredUrl"

    .line 209
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "content"

    if-nez v3, :cond_6a9

    const-string v3, "usage"

    .line 210
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6a9

    const-string v5, "locationUrl"

    .line 211
    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6a9

    .line 212
    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6a9

    const-string v6, "contentProtection"

    .line 213
    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6a9

    const-string v7, "affiliate"

    .line 214
    invoke-virtual {p2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6a9

    const-string v8, "urlBarMenuItems"

    .line 215
    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_50

    goto/16 :goto_6a9

    .line 223
    :cond_50
    iget-object v8, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->current2ndParentTag:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v8, "custom"

    const-string v9, "id"

    const-string v10, "link"

    const-string v11, "true"

    if-eqz p1, :cond_21f

    .line 224
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6bb

    .line 225
    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 226
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz p1, :cond_6bb

    .line 227
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setId(Ljava/lang/String;)V

    goto/16 :goto_6bb

    :cond_7d
    const-string p1, "name"

    .line 228
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_94

    .line 229
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz p1, :cond_6bb

    .line 230
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setName(Ljava/lang/String;)V

    goto/16 :goto_6bb

    .line 231
    :cond_94
    invoke-virtual {p2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a9

    .line 232
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz p1, :cond_6bb

    .line 233
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setLink(Ljava/lang/String;)V

    goto/16 :goto_6bb

    :cond_a9
    const-string p1, "update"

    .line 234
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d9

    .line 235
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz p1, :cond_6bb

    .line 236
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_d2

    .line 237
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setUpdateTime(I)V

    goto/16 :goto_6bb

    .line 239
    :cond_d2
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-virtual {p1, v1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setUpdateTime(I)V

    goto/16 :goto_6bb

    :cond_d9
    const-string p1, "width"

    .line 240
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f4

    .line 241
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz p1, :cond_6bb

    .line 242
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setWidth(I)V

    goto/16 :goto_6bb

    :cond_f4
    const-string p1, "height"

    .line 243
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10f

    .line 244
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz p1, :cond_6bb

    .line 245
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 245
    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setHeight(I)V

    goto/16 :goto_6bb

    :cond_10f
    const-string p1, "tabName"

    .line 247
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_126

    .line 248
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz p1, :cond_6bb

    .line 249
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setTabName(Ljava/lang/String;)V

    goto/16 :goto_6bb

    :cond_126
    const-string p1, "tabIcon"

    .line 250
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13d

    .line 251
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz p1, :cond_6bb

    .line 252
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setTabIcon(Ljava/lang/String;)V

    goto/16 :goto_6bb

    :cond_13d
    const-string p1, "injectJS"

    .line 253
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_162

    .line 254
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz p1, :cond_15c

    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->scriptTagsFound:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_15c

    .line 255
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setInjectJS(Ljava/lang/String;)V

    .line 257
    :cond_15c
    iput-object v2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->scriptTagsFound:Ljava/lang/Boolean;

    .line 258
    iput-object v2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->inInjectJsTag:Ljava/lang/Boolean;

    goto/16 :goto_6bb

    :cond_162
    const-string p1, "loadingCurtain"

    .line 259
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a6

    .line 260
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz p1, :cond_6bb

    .line 261
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 262
    sget-object p2, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;->NONE:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    const-string p3, "none"

    .line 263
    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_181

    .line 264
    sget-object p2, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;->NONE:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    goto :goto_19f

    :cond_181
    const-string p3, "default"

    .line 265
    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_18c

    .line 266
    sget-object p2, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;->DEFAULT:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    goto :goto_19f

    :cond_18c
    const-string p3, "banner"

    .line 267
    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_197

    .line 268
    sget-object p2, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;->BANNER:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    goto :goto_19f

    .line 269
    :cond_197
    invoke-virtual {p1, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_19f

    .line 270
    sget-object p2, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;->CUSTOM:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    .line 272
    :cond_19f
    :goto_19f
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setLoadingCurtainType(Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;)V

    goto/16 :goto_6bb

    :cond_1a6
    const-string p1, "tabType"

    .line 274
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1da

    .line 275
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz p1, :cond_6bb

    .line 276
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 277
    sget-object p2, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->WEB:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    const-string p3, "web"

    .line 278
    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_1c5

    .line 279
    sget-object p2, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->WEB:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    goto :goto_1cf

    :cond_1c5
    const-string p3, "pdf"

    .line 280
    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1cf

    .line 281
    sget-object p2, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->PDF:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    .line 282
    :cond_1cf
    :goto_1cf
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setTabType(Ljava/lang/String;)V

    goto/16 :goto_6bb

    :cond_1da
    const-string p1, "userAgent"

    .line 284
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f1

    .line 285
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz p1, :cond_6bb

    .line 286
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setUserAgent(Ljava/lang/String;)V

    goto/16 :goto_6bb

    :cond_1f1
    const-string p1, "tabId"

    .line 287
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_206

    .line 288
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setTabId(Ljava/lang/String;)V

    goto/16 :goto_6bb

    :cond_206
    const-string p1, "showAsTab"

    .line 289
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6bb

    .line 290
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setShowAsTab(Z)V

    goto/16 :goto_6bb

    .line 293
    :cond_21f
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_23a

    .line 294
    invoke-virtual {p2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6bb

    .line 295
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setRegisteredUrl(Ljava/lang/String;)V

    goto/16 :goto_6bb

    .line 297
    :cond_23a
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_255

    .line 298
    invoke-virtual {p2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6bb

    .line 299
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setAddUsageUrl(Ljava/lang/String;)V

    goto/16 :goto_6bb

    .line 301
    :cond_255
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_270

    .line 302
    invoke-virtual {p2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6bb

    .line 303
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setLocationUrl(Ljava/lang/String;)V

    goto/16 :goto_6bb

    .line 305
    :cond_270
    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_293

    .line 306
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "\n"

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "\t"

    .line 308
    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 307
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 306
    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setApplicationId(I)V

    goto/16 :goto_6bb

    :cond_293
    const-string p1, "widgetName"

    .line 309
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2a8

    .line 310
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setWidgetName(Ljava/lang/String;)V

    goto/16 :goto_6bb

    .line 311
    :cond_2a8
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2da

    const-string p1, "login"

    .line 312
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2c5

    .line 313
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setHttpAccessLogin(Ljava/lang/String;)V

    goto/16 :goto_6bb

    :cond_2c5
    const-string p1, "password"

    .line 314
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6bb

    .line 315
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setHttpAccessPassword(Ljava/lang/String;)V

    goto/16 :goto_6bb

    :cond_2da
    const-string p1, "userInterface"

    .line 317
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_308

    .line 318
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "standard"

    .line 319
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2f9

    .line 320
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    sget-object p2, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setApplicationMode(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;)V

    goto/16 :goto_6bb

    .line 321
    :cond_2f9
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6bb

    .line 322
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    sget-object p2, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->CUSTOM:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setApplicationMode(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;)V

    goto/16 :goto_6bb

    :cond_308
    const-string p1, "rateItemVisibility"

    .line 324
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_32b

    .line 325
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 326
    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_324

    .line 327
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, p3}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setRateItemVisibility(Z)V

    goto/16 :goto_6bb

    .line 329
    :cond_324
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setRateItemVisibility(Z)V

    goto/16 :goto_6bb

    :cond_32b
    const-string p1, "acceptCookie"

    .line 331
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_34d

    .line 332
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 333
    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_346

    .line 334
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, p3}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setAcceptCookie(Z)V

    goto/16 :goto_6bb

    .line 336
    :cond_346
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setAcceptCookie(Z)V

    goto/16 :goto_6bb

    :cond_34d
    const-string p1, "preventFromSleep"

    .line 338
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_36f

    .line 339
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 340
    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_368

    .line 341
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, p3}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setPreventFromSleep(Z)V

    goto/16 :goto_6bb

    .line 343
    :cond_368
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setPreventFromSleep(Z)V

    goto/16 :goto_6bb

    :cond_36f
    const-string p1, "showRefreshMenuItem"

    .line 345
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_391

    .line 346
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 347
    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_38a

    .line 348
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, p3}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowRefreshMenuItem(Z)V

    goto/16 :goto_6bb

    .line 350
    :cond_38a
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowRefreshMenuItem(Z)V

    goto/16 :goto_6bb

    :cond_391
    const-string p1, "showShareMenuItem"

    .line 352
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3b3

    .line 353
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 354
    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3ac

    .line 355
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, p3}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowShareMenuItem(Z)V

    goto/16 :goto_6bb

    .line 357
    :cond_3ac
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowShareMenuItem(Z)V

    goto/16 :goto_6bb

    :cond_3b3
    const-string p1, "showDownloadList"

    .line 359
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3d5

    .line 360
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 361
    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3ce

    .line 362
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, p3}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowDownloadList(Z)V

    goto/16 :goto_6bb

    .line 364
    :cond_3ce
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowDownloadList(Z)V

    goto/16 :goto_6bb

    :cond_3d5
    const-string p1, "showAboutMenuItem"

    .line 366
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3f7

    .line 367
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 368
    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3f0

    .line 369
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, p3}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowAboutMenuItem(Z)V

    goto/16 :goto_6bb

    .line 371
    :cond_3f0
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowAboutMenuItem(Z)V

    goto/16 :goto_6bb

    :cond_3f7
    const-string p1, "showInAppsMenuItem"

    .line 373
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_419

    .line 374
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 375
    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_412

    .line 376
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, p3}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowInAppMenuItem(Z)V

    goto/16 :goto_6bb

    .line 378
    :cond_412
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowInAppMenuItem(Z)V

    goto/16 :goto_6bb

    :cond_419
    const-string p1, "showExitMenuItem"

    .line 380
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_43b

    .line 381
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 382
    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_434

    .line 383
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, p3}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowExitMenuItem(Z)V

    goto/16 :goto_6bb

    .line 385
    :cond_434
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowExitMenuItem(Z)V

    goto/16 :goto_6bb

    :cond_43b
    const-string p1, "showSettings"

    .line 387
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_45d

    .line 388
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 389
    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_456

    .line 390
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, p3}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowSettings(Z)V

    goto/16 :goto_6bb

    .line 392
    :cond_456
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowSettings(Z)V

    goto/16 :goto_6bb

    :cond_45d
    const-string p1, "shareExtraLink"

    .line 394
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_472

    .line 395
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShareExtraLink(Ljava/lang/String;)V

    goto/16 :goto_6bb

    :cond_472
    const-string p1, "enableFullScreenBanner"

    .line 396
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_48b

    .line 397
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setFullscreenBannerEnabled(Z)V

    goto/16 :goto_6bb

    :cond_48b
    const-string p1, "enableOnExitFullScreenBanner"

    .line 398
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4a4

    .line 399
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setOnExitFullscreenBannerEnabled(Z)V

    goto/16 :goto_6bb

    :cond_4a4
    const-string p1, "showStartupConfirmationDialog"

    .line 400
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4bd

    .line 401
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowStartupConfirmationDialog(Z)V

    goto/16 :goto_6bb

    :cond_4bd
    const-string p1, "enableAboutScreen"

    .line 402
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4d6

    .line 403
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setIsAboutScreenEnabled(Z)V

    goto/16 :goto_6bb

    :cond_4d6
    const-string p1, "theme"

    .line 404
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_50f

    .line 405
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ACTION_BAR"

    .line 406
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4f5

    .line 407
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    sget-object p2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->ACTION_BAR:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setApplicationTheme(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;)V

    goto/16 :goto_6bb

    :cond_4f5
    const-string p2, "NO_MENU"

    .line 408
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_506

    .line 409
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    sget-object p2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->NO_MENU:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setApplicationTheme(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;)V

    goto/16 :goto_6bb

    .line 411
    :cond_506
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    sget-object p2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->SLIDER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setApplicationTheme(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;)V

    goto/16 :goto_6bb

    :cond_50f
    const-string p1, "enableUrlBar"

    .line 413
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_53f

    .line 414
    sget-object p1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;->DISABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    .line 415
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_528

    .line 416
    sget-object p1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;->ENABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    goto :goto_538

    .line 417
    :cond_528
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "on_external_urls"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_538

    .line 418
    sget-object p1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;->ENABLED_ON_EXTERNAL_URLS:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    .line 420
    :cond_538
    :goto_538
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p2, p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setUrlOverlayState(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;)V

    goto/16 :goto_6bb

    :cond_53f
    const-string p1, "enableHideUrlBar"

    .line 421
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "false"

    if-eqz p1, :cond_560

    .line 422
    sget-object p1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;->ENABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;

    .line 423
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_559

    .line 424
    sget-object p1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;->DISABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;

    .line 426
    :cond_559
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p2, p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setUrlBarHide(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;)V

    goto/16 :goto_6bb

    :cond_560
    const-string p1, "showSearchNotice"

    .line 427
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_582

    .line 428
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 429
    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_57b

    .line 430
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, p3}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowSearchNotice(Z)V

    goto/16 :goto_6bb

    .line 432
    :cond_57b
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowSearchNotice(Z)V

    goto/16 :goto_6bb

    :cond_582
    const-string p1, "urlBarStyle"

    .line 434
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5a3

    .line 435
    sget-object p1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStyles;->BOTTOM:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStyles;

    .line 436
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "top"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_59c

    .line 437
    sget-object p1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStyles;->TOP:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStyles;

    .line 439
    :cond_59c
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p2, p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setUrlBarStyle(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStyles;)V

    goto/16 :goto_6bb

    :cond_5a3
    const-string p1, "tabsPosition"

    .line 440
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5e6

    .line 441
    sget-object p1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->TOP:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    .line 442
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "bottom"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5be

    .line 443
    sget-object p1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->BOTTOM:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    goto :goto_5df

    .line 444
    :cond_5be
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "drawer"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5cf

    .line 445
    sget-object p1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->DRAWER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    goto :goto_5df

    .line 447
    :cond_5cf
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "bottom_menu"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5df

    .line 448
    sget-object p1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->BOTTOM_MENU:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    .line 450
    :cond_5df
    :goto_5df
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p2, p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setTabsPosition(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;)V

    goto/16 :goto_6bb

    :cond_5e6
    const-string p1, "enableHideTabBar"

    .line 451
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_605

    .line 452
    sget-object p1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsEnabledHide;->ENABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsEnabledHide;

    .line 453
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5fe

    .line 454
    sget-object p1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsEnabledHide;->DISABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsEnabledHide;

    .line 456
    :cond_5fe
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p2, p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setTabsEnabledHide(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsEnabledHide;)V

    goto/16 :goto_6bb

    :cond_605
    const-string p1, "publisher"

    .line 457
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_61a

    .line 458
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setPublisherName(Ljava/lang/String;)V

    goto/16 :goto_6bb

    .line 459
    :cond_61a
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_637

    const-string p1, "getString"

    .line 460
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6bb

    .line 461
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setAffiliateString(Ljava/lang/String;)V

    goto/16 :goto_6bb

    :cond_637
    const-string p1, "enableRedirection"

    .line 463
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_66f

    .line 464
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_653

    .line 465
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    sget-object p2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;->NO_REDIRECT:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setIsRedirectEnabled(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;)V

    goto :goto_6bb

    .line 466
    :cond_653
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_667

    .line 467
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    sget-object p2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;->REDIRECT_ALL:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setIsRedirectEnabled(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;)V

    goto :goto_6bb

    .line 469
    :cond_667
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    sget-object p2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;->REDIRECT_EXTERNAL:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setIsRedirectEnabled(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;)V

    goto :goto_6bb

    :cond_66f
    const-string p1, "downloadAction"

    .line 472
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6bb

    .line 473
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 474
    sget-object p2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;->DIALOG:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    const-string p3, "open"

    .line 475
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_68e

    .line 476
    sget-object p2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;->OPEN:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    goto :goto_6a3

    :cond_68e
    const-string p3, "save"

    .line 477
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_699

    .line 478
    sget-object p2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;->SAVE:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    goto :goto_6a3

    :cond_699
    const-string p3, "dialog"

    .line 479
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a3

    .line 480
    sget-object p2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;->DIALOG:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    .line 482
    :cond_6a3
    :goto_6a3
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setDownloadAction(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;)V

    goto :goto_6bb

    .line 217
    :cond_6a9
    :goto_6a9
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    .line 218
    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6bb

    .line 219
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->widgetsController:Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->addWidget(Lcom/appsgeyser/multiTabApp/model/WidgetEntity;)V

    const/4 p1, 0x0

    .line 220
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    .line 486
    :cond_6bb
    :goto_6bb
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method public startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 131
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const-string p1, "fullScreenMode"

    .line 141
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 142
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->current2ndParentTag:Ljava/lang/String;

    goto/16 :goto_1b6

    :cond_f
    const-string p1, "registeredUrl"

    .line 143
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 144
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    goto/16 :goto_1b6

    :cond_1b
    const-string p1, "usage"

    .line 145
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 146
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    goto/16 :goto_1b6

    :cond_27
    const-string p1, "locationUrl"

    .line 147
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 148
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    goto/16 :goto_1b6

    :cond_33
    const-string p1, "content"

    .line 149
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 150
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    .line 151
    new-instance p1, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-direct {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    goto/16 :goto_1b6

    :cond_46
    const-string p1, "contentProtection"

    .line 152
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_52

    .line 153
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    goto/16 :goto_1b6

    :cond_52
    const-string p1, "affiliate"

    .line 154
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 155
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    goto/16 :goto_1b6

    :cond_5e
    const-string p1, "injectJS"

    .line 156
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_6f

    .line 157
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->inInjectJsTag:Ljava/lang/Boolean;

    goto/16 :goto_1b6

    :cond_6f
    const-string p1, "script"

    .line 158
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a9

    const-string p1, "pattern"

    .line 159
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "regexp"

    .line 160
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "file"

    .line 161
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1b6

    .line 162
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz v0, :cond_1b6

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->inInjectJsTag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b6

    .line 163
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    new-instance v1, Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;

    invoke-direct {v1, p1, p2, p4}, Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->addScript(Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;)V

    .line 164
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->scriptTagsFound:Ljava/lang/Boolean;

    goto/16 :goto_1b6

    :cond_a9
    const-string p1, "urlBarMenuItems"

    .line 166
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_b5

    .line 167
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    goto/16 :goto_1b6

    .line 168
    :cond_b5
    iget-object p3, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a1

    const-string p1, "button"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a1

    const-string p1, "name"

    .line 169
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "back"

    .line 170
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e1

    .line 171
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    new-instance p2, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;

    sget-object p3, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->BACK:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-direct {p2, p3}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;-><init>(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->addUrlBarMenuButton(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;)V

    goto/16 :goto_1b6

    :cond_e1
    const-string p2, "forward"

    .line 172
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f7

    .line 173
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    new-instance p2, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;

    sget-object p3, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->FORWARD:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-direct {p2, p3}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;-><init>(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->addUrlBarMenuButton(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;)V

    goto/16 :goto_1b6

    :cond_f7
    const-string p2, "refresh"

    .line 174
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_10d

    .line 175
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    new-instance p2, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;

    sget-object p3, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->REFRESH:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-direct {p2, p3}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;-><init>(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->addUrlBarMenuButton(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;)V

    goto/16 :goto_1b6

    :cond_10d
    const-string p2, "request_desktop"

    .line 176
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_123

    .line 177
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    new-instance p2, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;

    sget-object p3, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->REQUEST_DESKTOP:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-direct {p2, p3}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;-><init>(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->addUrlBarMenuButton(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;)V

    goto/16 :goto_1b6

    :cond_123
    const-string p2, "add_to_home"

    .line 178
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_139

    .line 179
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    new-instance p2, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;

    sget-object p3, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->ADD_TO_HOME:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-direct {p2, p3}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;-><init>(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->addUrlBarMenuButton(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;)V

    goto/16 :goto_1b6

    :cond_139
    const-string p2, "home"

    .line 180
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_14e

    .line 181
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    new-instance p2, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;

    sget-object p3, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->HOME:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-direct {p2, p3}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;-><init>(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->addUrlBarMenuButton(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;)V

    goto :goto_1b6

    :cond_14e
    const-string p2, "downloads_list"

    .line 182
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_163

    .line 183
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    new-instance p2, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;

    sget-object p3, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->DOWNLOADS_LIST:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-direct {p2, p3}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;-><init>(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->addUrlBarMenuButton(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;)V

    goto :goto_1b6

    :cond_163
    const-string p2, "link"

    .line 184
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const-string p3, "url"

    const-string v0, "title"

    if-eqz p2, :cond_182

    .line 185
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 187
    iget-object p3, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    new-instance p4, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuLinkButton;

    invoke-direct {p4, p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuLinkButton;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->addUrlBarMenuButton(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;)V

    goto :goto_1b6

    :cond_182
    const-string p2, "icon"

    .line 188
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b6

    .line 189
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 191
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 192
    iget-object p4, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    new-instance v0, Lcom/appsgeyser/multiTabApp/configuration/UrlBarIcon;

    invoke-direct {v0, p1, p3, p2}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarIcon;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->addUrlBarMenuButton(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;)V

    goto :goto_1b6

    :cond_1a1
    const-string p1, "splashScreen"

    .line 194
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b6

    const-string p1, "image"

    .line 195
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1b6

    .line 197
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p2, p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setSplashScreen(Ljava/lang/String;)V

    :cond_1b6
    :goto_1b6
    return-void
.end method
