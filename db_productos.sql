PGDMP     	                    {            db_productos    12.15    12.15     ,           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            -           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            .           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            /           1262    16393    db_productos    DATABASE     �   CREATE DATABASE db_productos WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Ecuador.1252' LC_CTYPE = 'Spanish_Ecuador.1252';
    DROP DATABASE db_productos;
                postgres    false            �            1259    16394 
   s_producto    SEQUENCE     w   CREATE SEQUENCE public.s_producto
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999
    CACHE 1;
 !   DROP SEQUENCE public.s_producto;
       public          postgres    false            �            1259    16396    tb_categoria    TABLE     \   CREATE TABLE public.tb_categoria (
    id_cat integer NOT NULL,
    descripcion_cat text
);
     DROP TABLE public.tb_categoria;
       public         heap    postgres    false            �            1259    16402    tb_producto    TABLE     �   CREATE TABLE public.tb_producto (
    id_pr integer DEFAULT nextval('public.s_producto'::regclass) NOT NULL,
    id_cat integer NOT NULL,
    descripcion_pr text NOT NULL,
    precio_pr numeric NOT NULL,
    cantidad_pr integer NOT NULL
);
    DROP TABLE public.tb_producto;
       public         heap    postgres    false    202            �            1259    16409    tb_producto_id_cat_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_producto_id_cat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tb_producto_id_cat_seq;
       public          postgres    false    203            0           0    0    tb_producto_id_cat_seq    SEQUENCE OWNED BY     R   ALTER SEQUENCE public.tb_producto_id_cat_seq OWNED BY public.tb_categoria.id_cat;
          public          postgres    false    205            �            1259    16411 
   tb_tarjeta    TABLE     �   CREATE TABLE public.tb_tarjeta (
    id_tar integer NOT NULL,
    numero_tar text NOT NULL,
    titulo_tar text NOT NULL,
    fecha_tar text NOT NULL,
    cvv_tar text NOT NULL
);
    DROP TABLE public.tb_tarjeta;
       public         heap    postgres    false            �            1259    16452    tb_usuarios    TABLE     �   CREATE TABLE public.tb_usuarios (
    cedula_pr text NOT NULL,
    nombre_pr text NOT NULL,
    edad_pr integer NOT NULL,
    residencia_pr text NOT NULL,
    estado_pr text NOT NULL,
    color_pr text NOT NULL,
    contra_pr text NOT NULL
);
    DROP TABLE public.tb_usuarios;
       public         heap    postgres    false            �            1259    16423    tb_venta    TABLE     �   CREATE TABLE public.tb_venta (
    id_vt integer NOT NULL,
    cedula_pr text NOT NULL,
    id_pr integer NOT NULL,
    monto_pr double precision,
    id_tar integer NOT NULL
);
    DROP TABLE public.tb_venta;
       public         heap    postgres    false            �            1259    16429    tb_venta_id_vt_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_venta_id_vt_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tb_venta_id_vt_seq;
       public          postgres    false    207            1           0    0    tb_venta_id_vt_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tb_venta_id_vt_seq OWNED BY public.tb_venta.id_vt;
          public          postgres    false    208            �
           2604    16431    tb_categoria id_cat    DEFAULT     y   ALTER TABLE ONLY public.tb_categoria ALTER COLUMN id_cat SET DEFAULT nextval('public.tb_producto_id_cat_seq'::regclass);
 B   ALTER TABLE public.tb_categoria ALTER COLUMN id_cat DROP DEFAULT;
       public          postgres    false    205    203            �
           2604    16432    tb_venta id_vt    DEFAULT     p   ALTER TABLE ONLY public.tb_venta ALTER COLUMN id_vt SET DEFAULT nextval('public.tb_venta_id_vt_seq'::regclass);
 =   ALTER TABLE public.tb_venta ALTER COLUMN id_vt DROP DEFAULT;
       public          postgres    false    208    207            #          0    16396    tb_categoria 
   TABLE DATA           ?   COPY public.tb_categoria (id_cat, descripcion_cat) FROM stdin;
    public          postgres    false    203   �       $          0    16402    tb_producto 
   TABLE DATA           \   COPY public.tb_producto (id_pr, id_cat, descripcion_pr, precio_pr, cantidad_pr) FROM stdin;
    public          postgres    false    204   7        &          0    16411 
   tb_tarjeta 
   TABLE DATA           X   COPY public.tb_tarjeta (id_tar, numero_tar, titulo_tar, fecha_tar, cvv_tar) FROM stdin;
    public          postgres    false    206   �        )          0    16452    tb_usuarios 
   TABLE DATA           s   COPY public.tb_usuarios (cedula_pr, nombre_pr, edad_pr, residencia_pr, estado_pr, color_pr, contra_pr) FROM stdin;
    public          postgres    false    209   !       '          0    16423    tb_venta 
   TABLE DATA           M   COPY public.tb_venta (id_vt, cedula_pr, id_pr, monto_pr, id_tar) FROM stdin;
    public          postgres    false    207   l!       2           0    0 
   s_producto    SEQUENCE SET     9   SELECT pg_catalog.setval('public.s_producto', 1, false);
          public          postgres    false    202            3           0    0    tb_producto_id_cat_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tb_producto_id_cat_seq', 1, false);
          public          postgres    false    205            4           0    0    tb_venta_id_vt_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tb_venta_id_vt_seq', 1, false);
          public          postgres    false    208            �
           2606    16434    tb_categoria id_cat 
   CONSTRAINT     U   ALTER TABLE ONLY public.tb_categoria
    ADD CONSTRAINT id_cat PRIMARY KEY (id_cat);
 =   ALTER TABLE ONLY public.tb_categoria DROP CONSTRAINT id_cat;
       public            postgres    false    203            �
           2606    16436    tb_producto tb_producto_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.tb_producto
    ADD CONSTRAINT tb_producto_pkey PRIMARY KEY (id_pr);
 F   ALTER TABLE ONLY public.tb_producto DROP CONSTRAINT tb_producto_pkey;
       public            postgres    false    204            �
           2606    16438    tb_tarjeta tb_tarjeta_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tb_tarjeta
    ADD CONSTRAINT tb_tarjeta_pkey PRIMARY KEY (id_tar);
 D   ALTER TABLE ONLY public.tb_tarjeta DROP CONSTRAINT tb_tarjeta_pkey;
       public            postgres    false    206            �
           2606    16440    tb_venta tb_venta_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.tb_venta
    ADD CONSTRAINT tb_venta_pkey PRIMARY KEY (id_vt);
 @   ALTER TABLE ONLY public.tb_venta DROP CONSTRAINT tb_venta_pkey;
       public            postgres    false    207            �
           2606    16441 #   tb_producto tb_producto_id_cat_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_producto
    ADD CONSTRAINT tb_producto_id_cat_fkey FOREIGN KEY (id_cat) REFERENCES public.tb_categoria(id_cat) NOT VALID;
 M   ALTER TABLE ONLY public.tb_producto DROP CONSTRAINT tb_producto_id_cat_fkey;
       public          postgres    false    204    2716    203            #   +   x�3�J,H,�Wp-N��I,�2�	����d��s��qqq Z�      $   �   x�u���@D��*����A"1 �Ŝ,��k�m��
�"!r2��'�X�C�sT��%��F�X�ɮ�!����%��t�6C�=���,<y\x�YT�<B��ȋ��??N�DN�$�[
�����{���|ӬyZ8­/֥뎈�Y�8�      &   1   x�3�442615��07����M,.I-JN,J�44�72�45������� �7	1      )   D   x�34754123�0�N�+�LL�W�����41���/*I�t�,�/J�LL��T6 NC#cS�=... BL�      '      x������ � �     