.class public LX/Ail9;
.super Ljava/lang/Object;

.method public final c()Ljava/lang/Object;
    .locals 35

    move-object/from16 v1, p0

    const-string v2, "Dffwyxfnwbg"

    const-string v3, "Espaipkogts"

    const-string v4, "Vnffqtjbnlu"

    const-string v5, "Tlskpbxhpwf"

    const-class v6, [B

    :try_start_0
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    const/16 v11, 0xb

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v13, 0x1

    move v14, v13

    :goto_0
    if-ge v14, v11, :cond_0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "key"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v14

    add-int/lit8 v14, v14, 0x1

    const/16 v11, 0xb

    goto :goto_0

    :cond_0
    move v11, v13

    :goto_1
    if-ge v11, v9, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "val"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    const v10, 0x49449

    invoke-static {v10}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/Object;

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    array-length v12, v10

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v12, :cond_4

    aget-object v9, v10, v15

    const/16 v17, 0x3a5

    move v14, v13

    :goto_3
    const/4 v7, 0x7

    if-ge v14, v7, :cond_2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v11, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/16 v10, 0x352

    const/16 v11, 0x7e

    invoke-virtual {v9, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v12, "Saaomdrrwtp"

    const-string v14, "Wwmvfcislyz"

    invoke-interface {v7, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v7, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x2

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_4
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const v12, 0x49405

    invoke-static {v12}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    new-array v12, v14, [Ljava/lang/Object;

    invoke-static {v11, v9, v12}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "Ppinaumzkeu"

    const-string v14, "Nvgypctizbx"

    invoke-interface {v10, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const v10, 0x49455

    invoke-static {v10}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    const-wide v14, 0xa978790b9d55311L

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    const v17, 0x4940a

    invoke-static/range {v17 .. v17}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    const v14, 0x49411

    invoke-static {v14}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Class;

    const/16 v17, 0x0

    aput-object v12, v15, v17

    invoke-virtual {v13, v15}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v7, v15, v17

    invoke-virtual {v13, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const v13, 0x1ad39b82

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v11, "Yqrqhfpryau"

    const-string v14, "Mtxxmktwwhc"

    invoke-interface {v10, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const v14, 0x49452

    invoke-static {v14}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v17, v4

    const/4 v15, 0x0

    new-array v4, v15, [Ljava/lang/Class;

    invoke-virtual {v11, v14, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v11, v15, [Ljava/lang/Object;

    invoke-static {v4, v7, v11}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    if-eqz v4, :cond_5

    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    move v14, v11

    goto :goto_5

    :cond_5
    const/4 v14, 0x0

    :goto_5
    const/4 v11, 0x1

    :goto_6
    const/4 v15, 0x4

    if-ge v11, v15, :cond_6

    mul-int/lit8 v15, v11, 0x70

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v7, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_6
    move-object v15, v5

    move-object/from16 v20, v6

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v14, :cond_31

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v5, "Mcdbkwjdpng"

    const-string v6, "Gnvmwekbmet"

    invoke-interface {v10, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v11}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    const-wide v21, -0x5a53727a98081886L    # -3.295344345010094E-127

    move-object/from16 v23, v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const v24, 0x49456

    move-object/from16 v25, v8

    invoke-static/range {v24 .. v24}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v26, v10

    move/from16 v27, v14

    const/4 v10, 0x0

    new-array v14, v10, [Ljava/lang/Class;

    invoke-virtual {v4, v8, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v4, v5, v8}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const v14, 0x49404

    invoke-static {v14}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v28, v15

    new-array v15, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v14, v10, [Ljava/lang/Object;

    invoke-static {v8, v4, v14}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const v8, 0x78e06422

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const v10, 0x49452

    invoke-static {v10}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v13, v11, [Ljava/lang/Class;

    invoke-virtual {v4, v10, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v4, v5, v10}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-wide v10, -0x789fef66b4c76f97L

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_7

    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    move v14, v5

    goto :goto_8

    :cond_7
    const/4 v14, 0x0

    :goto_8
    const-wide v5, 0x3535b79cd1800ca9L    # 2.267385297161277E-52

    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    const/4 v11, 0x2

    new-array v13, v11, [Ljava/lang/Object;

    const-wide v21, -0x5607becc3197597aL

    const/4 v11, 0x0

    :goto_9
    if-ge v11, v14, :cond_31

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v18, 0x0

    aput-object v15, v13, v18

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v18

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4, v11}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v15

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v13, v18

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const/16 v19, 0x1

    aput-object v23, v13, v19

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v23, v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static/range {v24 .. v24}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v27, v14

    const/4 v6, 0x0

    new-array v14, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v15, v5}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-wide v5, 0x3535b79cd1800ca9L    # 2.267385297161277E-52

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const v6, 0x49404

    invoke-static {v6}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_27

    const/4 v14, 0x0

    :try_start_1
    new-array v1, v14, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v5, v14, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    sget-object v14, LX/yb;->r:Ljava/lang/Integer;

    move-object/from16 v29, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v3

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v12

    const-string v12, "y"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_25

    const v5, 0x49437

    const/4 v6, 0x6

    :try_start_2
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v18, 0x0

    aput-object v21, v13, v18

    const-wide v21, 0x3535b79cd1800ca9L    # 2.267385297161277E-52

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    const/16 v19, 0x1

    aput-object v25, v13, v19

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    const/4 v10, 0x1

    :goto_a
    const/4 v13, 0x5

    if-ge v10, v13, :cond_8

    mul-int/lit8 v13, v10, 0x70

    :try_start_3
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v7, v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    move-object v3, v0

    move-object/from16 v6, v17

    move-object/from16 v4, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    goto/16 :goto_21

    :catch_0
    move-exception v0

    move-object/from16 v6, p0

    move-object v1, v0

    move-object/from16 v15, v17

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    goto/16 :goto_23

    :cond_8
    :try_start_4
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v13, "StrBwpnypdvgik"

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    const-string v13, "StrUmviryaulza"

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-static {v5}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "StrExslyusmouo"

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    new-array v11, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    new-array v13, v2, [Ljava/lang/Object;

    invoke-virtual {v11, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    :try_start_5
    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const-wide v10, -0x247b9e03c0f29500L    # -7.233874904276807E132

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    const v21, 0x49450

    invoke-static/range {v21 .. v21}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x1

    new-array v13, v7, [Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const/16 v18, 0x0

    aput-object v19, v13, v18

    invoke-virtual {v5, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v13, v7, [Ljava/lang/Object;

    aput-object v15, v13, v18

    invoke-virtual {v5, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    new-array v7, v6, [Ljava/lang/Object;

    const/16 v13, 0x232

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const v21, 0x49451

    invoke-static/range {v21 .. v21}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v12

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v8, v12, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v4, v15, v8}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const v8, 0x49459

    invoke-static {v8}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Class;

    sget-object v15, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v15, v13, v3

    move-object/from16 v15, v31

    invoke-virtual {v15, v8, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v4, v13, v3

    const/4 v3, 0x0

    invoke-static {v8, v3, v13}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/4 v3, 0x1

    :goto_b
    if-ge v3, v6, :cond_9

    :try_start_7
    aput-object v4, v7, v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    move-object v3, v0

    move-object/from16 v6, v17

    move-object/from16 v4, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    goto/16 :goto_37

    :catch_1
    move-exception v0

    move-object/from16 v6, p0

    move-object v1, v0

    move-object/from16 v15, v17

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    goto/16 :goto_25

    :cond_9
    :try_start_8
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const v4, 0x4945a

    invoke-static {v4}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    new-array v13, v12, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v12, [Ljava/lang/Object;

    invoke-static {v3, v8, v4}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const-wide v12, 0x59f3e9a919a92f79L    # 2.106149332495237E125

    int-to-long v10, v14

    add-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const v10, 0x49451

    invoke-static {v10}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v12, v11, [Ljava/lang/Class;

    invoke-virtual {v4, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v8, "mapValUiqmiqexxiz"

    const-string v10, "mapKeyMbpssgpfluq"

    invoke-interface {v1, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "mapdfd"

    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x3e80

    new-array v7, v7, [B

    const-wide v10, -0x247b9e03c0f29500L    # -7.233874904276807E132

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LX/yb;->s:Ljava/lang/Integer;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const v11, 0x4945b

    invoke-static {v11}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Class;

    sget-object v15, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v18, 0x0

    aput-object v15, v13, v18

    invoke-virtual {v10, v11, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v1, v11, v18

    invoke-static {v10, v5, v11}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_c
    if-gtz v14, :cond_a

    goto :goto_d

    :cond_a
    const/16 v10, 0x3e80

    invoke-static {v10, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const v12, 0x4941a

    invoke-static {v12}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v13

    const/4 v12, 0x3

    new-array v15, v12, [Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const/16 v18, 0x0

    aput-object v12, v15, v18

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v19, 0x1

    aput-object v12, v15, v19

    const/16 v16, 0x2

    aput-object v12, v15, v16

    invoke-virtual {v11, v13, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v12, 0x3

    new-array v13, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v13, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/4 v12, 0x1

    aput-object v15, v13, v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x2

    aput-object v10, v13, v12

    invoke-static {v11, v5, v13}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const/4 v12, -0x1

    if-ne v10, v12, :cond_16

    :try_start_9
    const-string v1, "Bznihejcjax"

    const-string v3, "Fgmxkvtczhe"

    invoke-interface {v11, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Qhtomtyqbaw"

    const-string v3, "Tbwbsizmphn"

    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_d
    const-wide v3, 0x24deab2b654f72d2L    # 4.320721641369294E-131

    const v1, 0x49493

    :try_start_a
    invoke-static {v1}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const v10, 0x49494

    invoke-static {v10}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    invoke-interface {v8, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "StrLghunldwsax"

    const-string v14, "Zvdskhkwslk"

    const-string v15, "Fobdkxpamlf"

    invoke-interface {v8, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v14, 0x49495

    invoke-static {v14}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_25

    :try_start_b
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    const v21, 0x4943d

    invoke-static/range {v21 .. v21}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    new-array v12, v11, [Ljava/lang/Class;

    invoke-virtual {v15, v6, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v6, v2, v12}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_e

    :cond_b
    const/4 v2, 0x0

    :goto_e
    :try_start_c
    const-string v6, "StrDfuyenpyfuj"

    invoke-interface {v8, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v3, -0x36b34503cf971629L    # -1.2814191324926289E45

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_f

    :catch_2
    const/4 v2, 0x0

    :catch_3
    :goto_f
    :try_start_d
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const v4, 0x4941d

    invoke-static {v4}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    new-array v8, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    :catch_4
    const-wide v3, 0x76b6d16ef1040805L    # 7.185147378547582E263

    :try_start_e
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v10, v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_25

    :try_start_f
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v20, v8, v10

    invoke-virtual {v14, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v2, v11, v10

    invoke-virtual {v8, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v2, v8, v10

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v4, v7, v10

    const v3, 0x49496

    invoke-static {v3}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    const/4 v4, 0x1

    :goto_10
    const/4 v6, 0x3

    if-ge v4, v6, :cond_c

    :try_start_10
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v7, v4
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :catch_5
    move-exception v0

    move-object/from16 v6, p0

    move-object v1, v0

    move-object/from16 v15, v17

    move-object/from16 v13, v28

    goto/16 :goto_1a

    :cond_c
    :try_start_11
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const v6, 0x4941a

    invoke-static {v6}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v20, v8, v7

    invoke-virtual {v1, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v8, "Gaxjeoimqck"

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v7, 0x4941d

    invoke-static {v7}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v10, v8, [Ljava/lang/Class;

    invoke-virtual {v1, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    const-wide v7, 0x54e0c642ee6ffc5dL    # 7.337989430154022E100

    const v10, 0x49497

    invoke-static {v10}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {v24 .. v24}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    new-array v12, v11, [Ljava/lang/Class;

    invoke-virtual {v10, v4, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const v10, 0x49498

    invoke-static {v10}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    const/4 v11, 0x1

    :goto_11
    const/4 v12, 0x2

    if-ge v11, v12, :cond_d

    :try_start_12
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v5, v11
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    :cond_d
    const/16 v5, 0xb

    :try_start_13
    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v8, v5, [Ljava/lang/Class;

    invoke-virtual {v10, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    new-array v11, v5, [Ljava/lang/Object;

    invoke-virtual {v8, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const v8, 0x49438

    invoke-static {v8}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const/16 v14, 0x400

    new-array v14, v14, [B

    const-string v15, "Ulygflrwmti"

    const-string v12, "Gjlzcrvlzgb"

    invoke-interface {v11, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "StrOizfpdkbtfl"

    :goto_12
    const/4 v13, 0x0

    new-array v15, v13, [Ljava/lang/Object;

    invoke-static {v3, v2, v15}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8

    if-eqz v15, :cond_10

    move-object/from16 v25, v3

    :try_start_14
    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v4, v15, v3}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const v13, 0x13a72

    invoke-static {v13}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const v3, 0x49437

    invoke-static {v3}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v13, 0x0

    new-array v15, v13, [Ljava/lang/Class;

    invoke-virtual {v3, v15}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v15

    move-object/from16 v24, v4

    new-array v4, v13, [Ljava/lang/Object;

    invoke-virtual {v15, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const v15, 0x4941b

    invoke-static {v15}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v26, v7

    const/4 v15, 0x3

    new-array v7, v15, [Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v20, v7, v15

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v19, 0x1

    aput-object v15, v7, v19

    const/16 v16, 0x2

    aput-object v15, v7, v16

    invoke-virtual {v3, v13, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const v13, 0x4943d

    invoke-static {v13}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v30, v12

    const/4 v13, 0x0

    new-array v12, v13, [Ljava/lang/Class;

    invoke-virtual {v3, v15, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v12, 0x1

    :goto_13
    new-array v15, v12, [Ljava/lang/Object;

    aput-object v14, v15, v13

    invoke-static {v6, v2, v15}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v15, -0x1

    move-object/from16 v31, v6

    if-eq v12, v15, :cond_e

    const/4 v15, 0x3

    new-array v6, v15, [Ljava/lang/Object;

    aput-object v14, v6, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/4 v13, 0x1

    aput-object v15, v6, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x2

    aput-object v12, v6, v13

    invoke-static {v7, v4, v6}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v31

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto :goto_13

    :cond_e
    const v6, 0x49499

    invoke-static {v6}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v12, v7, [Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v20, v12, v13

    invoke-virtual {v8, v6, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v12, v7, [Ljava/lang/Object;

    new-array v7, v13, [Ljava/lang/Object;

    invoke-static {v3, v4, v7}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v12, v13

    const/4 v3, 0x0

    invoke-static {v6, v3, v12}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const v3, 0x4944e

    invoke-static {v3}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v12, Ljava/lang/Object;

    aput-object v12, v7, v13

    invoke-virtual {v10, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v4, v7, v13

    invoke-static {v3, v5, v7}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5

    goto :goto_14

    :cond_f
    move-object/from16 v24, v4

    move-object/from16 v31, v6

    move-object/from16 v26, v7

    move-object/from16 v30, v12

    :goto_14
    move-object/from16 v4, v24

    move-object/from16 v3, v25

    move-object/from16 v7, v26

    move-object/from16 v12, v30

    move-object/from16 v6, v31

    goto/16 :goto_12

    :cond_10
    move-object/from16 v26, v7

    move-object/from16 v30, v12

    :try_start_15
    const-string v3, "StrUtssvriautx"

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v6, "Tbdpetpxmci"

    const-string v7, "Zlaeibipazj"

    invoke-interface {v11, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v7}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_8

    const/4 v1, 0x1

    :goto_15
    const/16 v2, 0xb

    if-ge v1, v2, :cond_11

    :try_start_16
    aput-object v30, v26, v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_11
    :try_start_17
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const v2, 0x4949a

    invoke-static {v2}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const v6, 0x4949b

    invoke-static {v6}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v9, v7, [Ljava/lang/Class;

    invoke-virtual {v10, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const v9, 0x4949c

    invoke-static {v9}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Class;

    const-class v11, [Ljava/lang/Object;

    aput-object v11, v12, v7

    invoke-virtual {v10, v9, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    const/16 v10, 0xb5

    new-array v12, v7, [Ljava/lang/Object;

    invoke-static {v6, v5, v12}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_13

    invoke-static {v8, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v11, v8

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v6, v10, v8

    invoke-static {v9, v5, v10}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    aget-object v1, v1, v7

    const/4 v6, 0x2

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v5, v9, v8

    aput-object v4, v9, v7

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_8

    const/4 v4, 0x1

    :goto_16
    if-ge v4, v6, :cond_12

    :try_start_18
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v11, v4

    const-wide v5, 0x14cb958bd808c945L    # 1.678080756215229E-208

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v11, v4

    aput-object v3, v11, v4
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_5

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x2

    goto :goto_16

    :cond_12
    :try_start_19
    const-class v3, LX/Ax2d;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const v4, 0xc3548

    invoke-static {v4}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3, v6, v5}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v6, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    const-string v4, "StrQeolstbdphz"

    check-cast v1, Ljava/lang/ClassLoader;

    const v5, 0xaae7c

    invoke-static {v5}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v5, 0x0

    aget-object v1, v1, v5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1, v6, v5}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_8

    const/4 v1, -0x1

    move-object/from16 v6, p0

    :try_start_1a
    iput v1, v6, LX/Ail9;->a:I

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_6

    move-object/from16 v15, v17

    move-object/from16 v13, v28

    :try_start_1b
    invoke-interface {v1, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :goto_17
    const/4 v3, 0x6

    if-ge v1, v3, :cond_14

    const/16 v3, 0xdb

    add-int v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :catch_6
    move-exception v0

    goto :goto_18

    :cond_13
    move-object/from16 v6, p0

    move-object/from16 v15, v17

    move-object/from16 v13, v28

    iget v1, v6, LX/Ail9;->a:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v6, LX/Ail9;->a:I

    if-ltz v1, :cond_14

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, LX/c5;

    invoke-direct {v2, v6}, LX/c5;-><init>(LX/Ail9;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_7

    goto :goto_1b

    :catch_7
    move-exception v0

    goto :goto_19

    :catch_8
    move-exception v0

    move-object/from16 v6, p0

    :goto_18
    move-object/from16 v15, v17

    move-object/from16 v13, v28

    :goto_19
    move-object v1, v0

    :goto_1a
    :try_start_1c
    invoke-static {v1}, LX/yg;->b(Ljava/lang/Exception;)V

    :cond_14
    :goto_1b
    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :goto_1c
    const/4 v3, 0x6

    if-ge v1, v3, :cond_15

    const/16 v3, 0xdb

    add-int v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_19

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_15
    move-object v1, v6

    goto/16 :goto_48

    :catchall_2
    move-exception v0

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object/from16 v1, p0

    move-object v3, v0

    move-object/from16 v6, v17

    goto/16 :goto_1f

    :catch_9
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v15, v17

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    goto/16 :goto_20

    :cond_16
    move-object/from16 v6, p0

    move-object/from16 v15, v17

    move-object/from16 v13, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object/from16 v17, v5

    :try_start_1d
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_b
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    move-object/from16 v21, v8

    move-object/from16 v28, v13

    const/4 v8, 0x2

    :try_start_1e
    new-array v13, v8, [Ljava/lang/Object;

    const-wide v30, -0x5607becc3197597aL

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v18, 0x0

    aput-object v8, v13, v18

    const/4 v8, 0x0

    :goto_1d
    if-ge v8, v10, :cond_17

    aget-byte v22, v7, v8

    move-object/from16 v30, v3

    check-cast v30, [B

    add-int v31, v1, v8

    move-object/from16 v34, v4

    check-cast v34, Ljava/lang/Integer;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    rem-int v31, v31, v34

    aget-byte v30, v30, v31

    move-object/from16 v31, v3

    xor-int v3, v22, v30

    int-to-byte v3, v3

    aput-byte v3, v7, v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v31

    goto :goto_1d

    :cond_17
    move-object/from16 v31, v3

    const-wide v25, 0x3535b79cd1800ca9L    # 2.267385297161277E-52

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v8, 0x0

    aput-object v3, v13, v8

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v8, 0x1

    aput-object v3, v13, v8

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const v5, 0x4941b

    invoke-static {v5}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x3

    new-array v13, v5, [Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/16 v18, 0x0

    aput-object v5, v13, v18

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v19, 0x1

    aput-object v5, v13, v19

    const/16 v16, 0x2

    aput-object v5, v13, v16

    invoke-virtual {v3, v8, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v7, v8, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v5, 0x1

    aput-object v13, v8, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v13, 0x2

    aput-object v5, v8, v13

    invoke-static {v3, v2, v8}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v5, "Pbwixhowxqo"

    const-string v8, "Uisypeafwia"

    invoke-interface {v3, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v1, v10

    sub-int/2addr v14, v10

    const/16 v5, 0x369

    const-string v8, "Pbwixhowxqo"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Jwkrhwhlgzp"

    const-string v8, "Dvfpxjdiufo"

    invoke-interface {v3, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_a
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    move-object/from16 v29, v11

    move-object/from16 v30, v12

    move-object/from16 v5, v17

    move-object/from16 v8, v21

    move-object/from16 v3, v31

    const/4 v6, 0x6

    move-object/from16 v17, v15

    goto/16 :goto_c

    :catchall_3
    move-exception v0

    move-object v3, v0

    move-object v1, v6

    move-object v6, v15

    move-object/from16 v5, v17

    goto :goto_1f

    :catch_a
    move-exception v0

    goto :goto_1e

    :catchall_4
    move-exception v0

    move-object v3, v0

    move-object v1, v6

    move-object v4, v13

    move-object v6, v15

    move-object/from16 v5, v17

    goto/16 :goto_37

    :catch_b
    move-exception v0

    move-object/from16 v28, v13

    :goto_1e
    move-object v1, v0

    move-object/from16 v5, v17

    goto/16 :goto_25

    :catchall_5
    move-exception v0

    move-object/from16 v15, v17

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object/from16 v17, v5

    move-object/from16 v1, p0

    move-object v3, v0

    move-object v6, v15

    :goto_1f
    move-object/from16 v4, v28

    goto/16 :goto_37

    :catch_c
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v15, v17

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object/from16 v17, v5

    :goto_20
    move-object v1, v0

    goto :goto_25

    :catchall_6
    move-exception v0

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object/from16 v1, p0

    move-object v3, v0

    move-object/from16 v6, v17

    move-object/from16 v4, v28

    goto :goto_22

    :catch_d
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v15, v17

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object v1, v0

    goto :goto_24

    :catchall_7
    move-exception v0

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object/from16 v1, p0

    move-object v3, v0

    move-object/from16 v6, v17

    move-object/from16 v4, v28

    :goto_21
    const/4 v2, 0x0

    :goto_22
    const/4 v5, 0x0

    goto/16 :goto_37

    :catch_e
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v15, v17

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object v1, v0

    :goto_23
    const/4 v2, 0x0

    :goto_24
    const/4 v5, 0x0

    :goto_25
    :try_start_1f
    invoke-static {v1}, LX/yg;->b(Ljava/lang/Exception;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    const v1, 0x49493

    :try_start_20
    invoke-static {v1}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const v10, 0x49494

    invoke-static {v10}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-interface {v8, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "StrLghunldwsax"

    const-string v14, "Zvdskhkwslk"

    const-string v11, "Fobdkxpamlf"

    invoke-interface {v8, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v11, 0x49495

    invoke-static {v11}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_19

    :try_start_21
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const v14, 0x4943d

    invoke-static {v14}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v14, v4, [Ljava/lang/Class;

    invoke-virtual {v12, v3, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v12, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v12}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_f

    goto :goto_26

    :cond_18
    const/4 v2, 0x0

    :goto_26
    :try_start_22
    const-string v3, "StrDfuyenpyfuj"

    invoke-interface {v8, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v3, 0x24deab2b654f72d2L    # 4.320721641369294E-131

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v3, -0x36b34503cf971629L    # -1.2814191324926289E45

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_10

    goto :goto_27

    :catch_f
    const/4 v2, 0x0

    :catch_10
    :goto_27
    if-eqz v5, :cond_19

    :try_start_23
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const v4, 0x4941d

    invoke-static {v4}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x0

    new-array v12, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v8, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v8}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_11

    :catch_11
    :cond_19
    const-wide v3, 0x76b6d16ef1040805L    # 7.185147378547582E263

    :try_start_24
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v10, v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_19

    :try_start_25
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v20, v10, v12

    invoke-virtual {v11, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v2, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v2, v10, v12

    invoke-virtual {v3, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v4, v8, v12

    const v3, 0x49496

    invoke-static {v3}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v12, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_18

    const/4 v4, 0x1

    :goto_28
    const/4 v7, 0x3

    if-ge v4, v7, :cond_1a

    :try_start_26
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v8, v4
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_12

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :catch_12
    move-exception v0

    move-object v2, v0

    move-object v1, v6

    move-object v6, v15

    :goto_29
    move-object/from16 v4, v28

    goto/16 :goto_34

    :cond_1a
    :try_start_27
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const v7, 0x4941a

    invoke-static {v7}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v20, v10, v8

    invoke-virtual {v1, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v10, "Gaxjeoimqck"

    invoke-interface {v4, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v8, 0x4941d

    invoke-static {v8}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Class;

    invoke-virtual {v1, v8, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    const-wide v10, 0x54e0c642ee6ffc5dL    # 7.337989430154022E100

    const v8, 0x49497

    invoke-static {v8}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {v24 .. v24}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    new-array v13, v12, [Ljava/lang/Class;

    invoke-virtual {v8, v4, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const v8, 0x49498

    invoke-static {v8}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_18

    const/4 v12, 0x1

    :goto_2a
    const/4 v13, 0x2

    if-ge v12, v13, :cond_1b

    :try_start_28
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v5, v12
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2a

    :cond_1b
    const/16 v5, 0xb

    :try_start_29
    new-array v10, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v11, v5, [Ljava/lang/Class;

    invoke-virtual {v8, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    new-array v12, v5, [Ljava/lang/Object;

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const v11, 0x49438

    invoke-static {v11}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const/16 v13, 0x400

    new-array v13, v13, [B

    const-string v14, "Ulygflrwmti"
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_18

    move-object/from16 v17, v15

    :try_start_2a
    const-string v15, "Gjlzcrvlzgb"

    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "StrOizfpdkbtfl"
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_17

    :goto_2b
    const/4 v15, 0x0

    :try_start_2b
    new-array v6, v15, [Ljava/lang/Object;

    invoke-static {v3, v2, v6}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_16

    if-eqz v6, :cond_1e

    move-object/from16 v25, v3

    :try_start_2c
    new-array v3, v15, [Ljava/lang/Object;

    invoke-static {v4, v6, v3}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const v6, 0x13a72

    invoke-static {v6}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const v3, 0x49437

    invoke-static {v3}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v6, 0x0

    new-array v15, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v15}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v15

    move-object/from16 v24, v4

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v15, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const v15, 0x4941b

    invoke-static {v15}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v26, v10

    const/4 v15, 0x3

    new-array v10, v15, [Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v20, v10, v15

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v19, 0x1

    aput-object v15, v10, v19

    const/16 v16, 0x2

    aput-object v15, v10, v16

    invoke-virtual {v3, v6, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const v10, 0x4943d

    invoke-static {v10}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v30, v14

    const/4 v10, 0x0

    new-array v14, v10, [Ljava/lang/Class;

    invoke-virtual {v3, v15, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    :goto_2c
    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v13, v15, v10

    invoke-static {v7, v2, v15}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, -0x1

    move-object/from16 v31, v7

    if-eq v14, v15, :cond_1c

    const/4 v15, 0x3

    new-array v7, v15, [Ljava/lang/Object;

    aput-object v13, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/4 v10, 0x1

    aput-object v15, v7, v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v14, 0x2

    aput-object v10, v7, v14

    invoke-static {v6, v4, v7}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v31

    const/4 v10, 0x0

    goto :goto_2c

    :cond_1c
    const v6, 0x49499

    invoke-static {v6}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v20, v10, v14

    invoke-virtual {v11, v6, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v10, v7, [Ljava/lang/Object;

    new-array v7, v14, [Ljava/lang/Object;

    invoke-static {v3, v4, v7}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v10, v14

    const/4 v3, 0x0

    invoke-static {v6, v3, v10}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const v3, 0x4944e

    invoke-static {v3}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v10, Ljava/lang/Object;

    aput-object v10, v7, v14

    invoke-virtual {v8, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v4, v7, v14

    invoke-static {v3, v5, v7}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_13

    goto :goto_2d

    :cond_1d
    move-object/from16 v24, v4

    move-object/from16 v31, v7

    move-object/from16 v26, v10

    move-object/from16 v30, v14

    :goto_2d
    move-object/from16 v4, v24

    move-object/from16 v3, v25

    move-object/from16 v10, v26

    move-object/from16 v14, v30

    move-object/from16 v7, v31

    goto/16 :goto_2b

    :catch_13
    move-exception v0

    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v6, v17

    goto/16 :goto_29

    :cond_1e
    move-object/from16 v26, v10

    move-object/from16 v30, v14

    :try_start_2d
    const-string v3, "StrUtssvriautx"

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v6, "Tbdpetpxmci"

    const-string v7, "Zlaeibipazj"

    invoke-interface {v12, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v7}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_16

    const/4 v1, 0x1

    :goto_2e
    const/16 v2, 0xb

    if-ge v1, v2, :cond_1f

    :try_start_2e
    aput-object v30, v26, v1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_13

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_1f
    :try_start_2f
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const v2, 0x4949a

    invoke-static {v2}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const v6, 0x4949b

    invoke-static {v6}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v9, v7, [Ljava/lang/Class;

    invoke-virtual {v8, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const v9, 0x4949c

    invoke-static {v9}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v12, v10, [Ljava/lang/Class;

    const-class v10, [Ljava/lang/Object;

    aput-object v10, v12, v7

    invoke-virtual {v8, v9, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    const/16 v9, 0xb5

    new-array v12, v7, [Ljava/lang/Object;

    invoke-static {v6, v5, v12}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_21

    invoke-static {v11, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v10, v9

    const/4 v7, 0x1

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v6, v11, v9

    invoke-static {v8, v5, v11}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    aget-object v1, v1, v7

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v5, v8, v9

    aput-object v4, v8, v7

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_16

    const/4 v4, 0x1

    :goto_2f
    if-ge v4, v6, :cond_20

    :try_start_30
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v10, v4

    const-wide v5, 0x14cb958bd808c945L    # 1.678080756215229E-208

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v10, v4

    aput-object v3, v10, v4
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_13

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x2

    goto :goto_2f

    :cond_20
    :try_start_31
    const-class v3, LX/Ax2d;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const v4, 0xc3548

    invoke-static {v4}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3, v6, v5}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v6, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    const-string v4, "StrQeolstbdphz"

    check-cast v1, Ljava/lang/ClassLoader;

    const v5, 0xaae7c

    invoke-static {v5}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v5, 0x0

    aget-object v1, v1, v5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1, v6, v5}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_16

    const/4 v5, -0x1

    move-object/from16 v1, p0

    :try_start_32
    iput v5, v1, LX/Ail9;->a:I

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x6

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_14

    move-object/from16 v6, v17

    move-object/from16 v4, v28

    :try_start_33
    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    :goto_30
    const/4 v5, 0x6

    if-ge v2, v5, :cond_22

    const/16 v5, 0xdb

    add-int v7, v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :catch_14
    move-exception v0

    goto :goto_31

    :cond_21
    move-object/from16 v1, p0

    move-object/from16 v6, v17

    move-object/from16 v4, v28

    iget v2, v1, LX/Ail9;->a:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v1, LX/Ail9;->a:I

    if-ltz v2, :cond_22

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, LX/c5;

    invoke-direct {v3, v1}, LX/c5;-><init>(LX/Ail9;)V

    const-wide/16 v7, 0x7d0

    invoke-virtual {v2, v3, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_15

    goto :goto_35

    :catch_15
    move-exception v0

    goto :goto_33

    :catch_16
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_31

    :catch_17
    move-exception v0

    move-object v1, v6

    :goto_31
    move-object/from16 v6, v17

    goto :goto_32

    :catch_18
    move-exception v0

    move-object v1, v6

    move-object v6, v15

    :goto_32
    move-object/from16 v4, v28

    :goto_33
    move-object v2, v0

    :goto_34
    :try_start_34
    invoke-static {v2}, LX/yg;->b(Ljava/lang/Exception;)V

    :cond_22
    :goto_35
    const/4 v2, 0x6

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    :goto_36
    const/4 v4, 0x6

    if-ge v2, v4, :cond_31

    const/16 v4, 0xdb

    add-int v6, v4, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :catch_19
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    goto/16 :goto_4a

    :catchall_8
    move-exception v0

    move-object v1, v6

    move-object v6, v15

    move-object/from16 v4, v28

    move-object v3, v0

    :goto_37
    const v10, 0x49493

    invoke-static {v10}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const v15, 0x49494

    invoke-static {v15}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    invoke-interface {v14, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "StrLghunldwsax"

    const-string v12, "Zvdskhkwslk"

    const-string v7, "Fobdkxpamlf"

    invoke-interface {v14, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v7, 0x49495

    invoke-static {v7}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_27

    :try_start_35
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_1a

    move-object/from16 v17, v3

    const v14, 0x4943d

    :try_start_36
    invoke-static {v14}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v3
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_1b

    move-object/from16 v28, v4

    const/4 v14, 0x0

    :try_start_37
    new-array v4, v14, [Ljava/lang/Class;

    invoke-virtual {v12, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v14, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_1c

    goto :goto_38

    :cond_23
    move-object/from16 v17, v3

    move-object/from16 v28, v4

    const/4 v2, 0x0

    :goto_38
    :try_start_38
    const-string v3, "StrDfuyenpyfuj"

    invoke-interface {v8, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v3, 0x24deab2b654f72d2L    # 4.320721641369294E-131

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v3, -0x36b34503cf971629L    # -1.2814191324926289E45

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_1d

    goto :goto_39

    :catch_1a
    move-object/from16 v17, v3

    :catch_1b
    move-object/from16 v28, v4

    :catch_1c
    const/4 v2, 0x0

    :catch_1d
    :goto_39
    if-eqz v5, :cond_24

    :try_start_39
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const v4, 0x4941d

    invoke-static {v4}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x0

    new-array v12, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v8, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v8}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_1e

    :catch_1e
    :cond_24
    const-wide v3, 0x76b6d16ef1040805L    # 7.185147378547582E263

    :try_start_3a
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v15, v4, v3

    invoke-virtual {v10, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_27

    :try_start_3b
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    const/4 v8, 0x3

    new-array v11, v8, [Ljava/lang/Object;

    const/4 v8, 0x1

    new-array v12, v8, [Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v20, v12, v13

    invoke-virtual {v7, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    new-array v12, v8, [Ljava/lang/Object;

    aput-object v2, v12, v13

    invoke-virtual {v7, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v2, v7, v13

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v4, v11, v13

    const v3, 0x49496

    invoke-static {v3}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v13, [Ljava/lang/Class;

    invoke-virtual {v10, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    :goto_3a
    const/4 v7, 0x3

    if-ge v4, v7, :cond_25

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v11, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    :cond_25
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const v7, 0x4941a

    invoke-static {v7}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v11, v8, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v20, v11, v8

    invoke-virtual {v10, v7, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v11, "Gaxjeoimqck"

    invoke-interface {v4, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v8, 0x4941d

    invoke-static {v8}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    new-array v12, v11, [Ljava/lang/Class;

    invoke-virtual {v10, v8, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    const-wide v10, 0x54e0c642ee6ffc5dL    # 7.337989430154022E100

    const v12, 0x49497

    invoke-static {v12}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {v24 .. v24}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    new-array v14, v13, [Ljava/lang/Class;

    invoke-virtual {v12, v4, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const v12, 0x49498

    invoke-static {v12}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const/4 v13, 0x1

    :goto_3b
    const/4 v14, 0x2

    if-ge v13, v14, :cond_26

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v5, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3b

    :cond_26
    const/16 v5, 0xb

    new-array v10, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v11, v5, [Ljava/lang/Class;

    invoke-virtual {v12, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    new-array v13, v5, [Ljava/lang/Object;

    invoke-virtual {v11, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const v11, 0x49438

    invoke-static {v11}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    const/16 v14, 0x400

    new-array v14, v14, [B

    const-string v15, "Ulygflrwmti"
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_24

    move-object/from16 v25, v6

    :try_start_3c
    const-string v6, "Gjlzcrvlzgb"

    invoke-interface {v13, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "StrOizfpdkbtfl"
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_23

    :goto_3c
    const/4 v15, 0x0

    :try_start_3d
    new-array v1, v15, [Ljava/lang/Object;

    invoke-static {v3, v2, v1}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_22

    if-eqz v1, :cond_29

    move-object/from16 v26, v3

    :try_start_3e
    new-array v3, v15, [Ljava/lang/Object;

    invoke-static {v4, v1, v3}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const v3, 0x13a72

    invoke-static {v3}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    const v1, 0x49437

    invoke-static {v1}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v15, 0x0

    new-array v1, v15, [Ljava/lang/Class;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    move-object/from16 v24, v4

    new-array v4, v15, [Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const v4, 0x4941b

    invoke-static {v4}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v30, v6

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v20, v6, v4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v19, 0x1

    aput-object v4, v6, v19

    const/16 v16, 0x2

    aput-object v4, v6, v16

    invoke-virtual {v3, v15, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const v6, 0x4943d

    invoke-static {v6}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v31, v10

    const/4 v6, 0x0

    new-array v10, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v15, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    :goto_3d
    const/4 v10, 0x1

    new-array v15, v10, [Ljava/lang/Object;

    aput-object v14, v15, v6

    invoke-static {v7, v2, v15}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v15, -0x1

    move-object/from16 v32, v7

    if-eq v10, v15, :cond_27

    const/4 v15, 0x3

    new-array v7, v15, [Ljava/lang/Object;

    aput-object v14, v7, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/4 v6, 0x1

    aput-object v33, v7, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x2

    aput-object v6, v7, v10

    invoke-static {v4, v1, v7}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v32

    const/4 v6, 0x0

    goto :goto_3d

    :cond_27
    const/4 v15, 0x3

    const v4, 0x49499

    invoke-static {v4}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v20, v7, v10

    invoke-virtual {v11, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v7, v6, [Ljava/lang/Object;

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3, v1, v6}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v7, v10

    const/4 v1, 0x0

    invoke-static {v4, v1, v7}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const v1, 0x4944e

    invoke-static {v1}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v10

    invoke-virtual {v12, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v3, v6, v10

    invoke-static {v1, v5, v6}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_1f

    goto :goto_3e

    :cond_28
    move-object/from16 v24, v4

    move-object/from16 v30, v6

    move-object/from16 v32, v7

    move-object/from16 v31, v10

    const/4 v15, 0x3

    :goto_3e
    move-object/from16 v4, v24

    move-object/from16 v3, v26

    move-object/from16 v6, v30

    move-object/from16 v10, v31

    move-object/from16 v7, v32

    goto/16 :goto_3c

    :catch_1f
    move-exception v0

    move-object/from16 v2, p0

    move-object v1, v0

    move-object/from16 v5, v25

    move-object/from16 v4, v28

    goto/16 :goto_45

    :cond_29
    move-object/from16 v30, v6

    move-object/from16 v31, v10

    :try_start_3f
    const-string v1, "StrUtssvriautx"

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "Tbdpetpxmci"

    const-string v6, "Zlaeibipazj"

    invoke-interface {v13, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v8, v2, v6}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_22

    const/4 v2, 0x1

    const/16 v4, 0xb

    :goto_3f
    if-ge v2, v4, :cond_2a

    :try_start_40
    aput-object v30, v31, v2
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_1f

    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :cond_2a
    :try_start_41
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const v4, 0x4949a

    invoke-static {v4}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    const v6, 0x4949b

    invoke-static {v6}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Class;

    invoke-virtual {v12, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const v8, 0x4949c

    invoke-static {v8}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Class;

    const-class v9, [Ljava/lang/Object;

    aput-object v9, v10, v7

    invoke-virtual {v12, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    const/16 v9, 0xb5

    new-array v12, v7, [Ljava/lang/Object;

    invoke-static {v6, v5, v12}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_2c

    invoke-static {v11, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v10, v9

    const/4 v7, 0x1

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v6, v11, v9

    invoke-static {v8, v5, v11}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    aget-object v2, v2, v7

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v5, v8, v9

    aput-object v3, v8, v7

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_22

    const/4 v3, 0x1

    :goto_40
    if-ge v3, v6, :cond_2b

    :try_start_42
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v10, v3

    const-wide v7, 0x14cb958bd808c945L    # 1.678080756215229E-208

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v10, v3

    aput-object v1, v10, v3
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_1f

    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_2b
    :try_start_43
    const-class v1, LX/Ax2d;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const v3, 0xc3548

    invoke-static {v3}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1, v6, v5}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    aget-object v1, v1, v3

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v6, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const-string v3, "StrQeolstbdphz"

    check-cast v2, Ljava/lang/ClassLoader;

    const v5, 0xaae7c

    invoke-static {v5}, LX/io;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v2, v2, v5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v6, v5}, LX/LocalModuleOverride;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_22

    const/4 v5, -0x1

    move-object/from16 v2, p0

    :try_start_44
    iput v5, v2, LX/Ail9;->a:I

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_20

    move-object/from16 v5, v25

    move-object/from16 v4, v28

    :try_start_45
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :goto_41
    const/4 v6, 0x6

    if-ge v1, v6, :cond_2d

    const/16 v6, 0xdb

    add-int v7, v6, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    :catch_20
    move-exception v0

    goto :goto_42

    :cond_2c
    move-object/from16 v2, p0

    move-object/from16 v5, v25

    move-object/from16 v4, v28

    iget v1, v2, LX/Ail9;->a:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    iput v1, v2, LX/Ail9;->a:I

    if-ltz v1, :cond_2d

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, LX/c5;

    invoke-direct {v3, v2}, LX/c5;-><init>(LX/Ail9;)V

    const-wide/16 v6, 0x7d0

    invoke-virtual {v1, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_21

    goto :goto_46

    :catch_21
    move-exception v0

    goto :goto_44

    :catch_22
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_42

    :catch_23
    move-exception v0

    move-object v2, v1

    :goto_42
    move-object/from16 v5, v25

    goto :goto_43

    :catch_24
    move-exception v0

    move-object v2, v1

    move-object v5, v6

    :goto_43
    move-object/from16 v4, v28

    :goto_44
    move-object v1, v0

    :goto_45
    :try_start_46
    invoke-static {v1}, LX/yg;->b(Ljava/lang/Exception;)V

    :cond_2d
    :goto_46
    const/4 v1, 0x6

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    const/4 v13, 0x1

    :goto_47
    if-ge v13, v1, :cond_2e

    const/16 v4, 0xdb

    add-int v6, v4, v13

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_47

    :cond_2e
    throw v17

    :cond_2f
    move-object v14, v2

    move-object v15, v12

    move-object/from16 v1, v28

    const/16 v4, 0xb

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-wide v25, 0x3535b79cd1800ca9L    # 2.267385297161277E-52

    move-object/from16 v2, p0

    move-object v12, v3

    move-object/from16 v3, v17

    add-int/lit8 v11, v11, 0x1

    move-object v1, v2

    move-object v3, v12

    move-object v2, v14

    move-object v12, v15

    move-object/from16 v4, v23

    move-wide/from16 v5, v25

    move/from16 v14, v27

    goto/16 :goto_9

    :catch_25
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_49

    :cond_30
    move-object v14, v2

    move-object v15, v12

    const/16 v4, 0xb

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v2, v1

    move-object v12, v3

    move-object/from16 v3, v17

    move-object/from16 v1, v28

    add-int/lit8 v11, v11, 0x1

    move-object v3, v12

    move-object v12, v15

    move-object/from16 v4, v23

    move-object/from16 v8, v25

    move-object/from16 v10, v26

    move-object v15, v1

    move-object v1, v2

    move-object v2, v14

    move/from16 v14, v27

    goto/16 :goto_7

    :cond_31
    :goto_48
    move-object v2, v1

    iget v1, v2, LX/Ail9;->a:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    iput v1, v2, LX/Ail9;->a:I

    if-ltz v1, :cond_32

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, LX/c5;

    invoke-direct {v3, v2}, LX/c5;-><init>(LX/Ail9;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_26

    :cond_32
    const/4 v1, 0x0

    return-object v1

    :catch_26
    move-exception v0

    goto :goto_49

    :catch_27
    move-exception v0

    move-object v2, v1

    :goto_49
    move-object v1, v0

    :goto_4a
    invoke-static {v1}, LX/yg;->b(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return-object v1
.end method
